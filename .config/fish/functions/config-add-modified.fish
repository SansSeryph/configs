function config-add-modified --wraps=config\ status\ \|\ grep\ \'modified:\'\ \|\ sed\ \'s/\\\(.\*modified:\\s\*\\\)//\' --wraps=config\ add\ \(config\ status\ \|\ grep\ \'modified:\'\ \|\ sed\ \'s/\\\(.\*modified:\\s\*\\\)//\'\) --description alias\ config-add-modified\ config\ add\ \(config\ status\ \|\ grep\ \'modified:\'\ \|\ sed\ \'s/\\\(.\*modified:\\s\*\\\)//\'\)
  config add (config status | grep 'modified:' | sed 's/\(.*modified:\s*\)//') $argv
        
end
