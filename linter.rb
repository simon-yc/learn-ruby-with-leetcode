# Scan all Ruby files in the current directory and fix whitespace issues
# Also ensures that each file ends with exactly one newline

Dir.glob("*.rb").each do |file|
    content = File.read(file)

    # Remove tabs (and any whitespace) from empty lines
    fixed = content.gsub(/^[ \t]+$/,'') # Remove lines that are only whitespace (no newline)
    fixed = fixed.gsub(/^[ \t]+(?=\r?\n)/, '') # Remove whitespace from empty lines

    # Ensure there's exactly one newline at the end of the file
    fixed = fixed.sub(/\s*\z/, "\n")

    if fixed != content
      puts "Fixing whitespace in #{file}..."
      File.write(file, fixed)
    end
end

puts "Linting complete!"
