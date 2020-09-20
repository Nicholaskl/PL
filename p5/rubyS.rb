require 'find'

Find.find("/") do |path|
    if File.basename(path).end_with?('.conf')
        puts path
    end
end
