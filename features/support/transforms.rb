CAPTURE_A_WORD = Transform /^(.*)$/ do |level|
  level.gsub(/ /, '_').delete(',').downcase.to_sym
end
