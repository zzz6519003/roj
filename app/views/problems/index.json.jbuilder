json.array!(@problems) do |problem|
  json.extract! problem, :title, :description, :input, :output, :sample_input, :sample_output, :hint, :source, :time_limit, :memory_limit, :accepted, :submit
  json.url problem_url(problem, format: :json)
end
