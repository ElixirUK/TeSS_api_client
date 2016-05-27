class Material
  attr_accessor :title, :url, :short_description, :doi, :remote_updated_date, :remote_created_date, :content_provider_id,
                :scientific_topic_names, :keywords, :id, :authors, :long_description

  def initialize(title=nil, url=nil, short_description=nil, doi=nil, remote_updated_date=nil, remote_created_date=nil,
                 content_provider_id=nil, scientific_topics=[], keywords=[], licence=nil, difficulty_level=nil,
                 contributors=[], authors=[], target_audience=[], id=nil, long_description=nil)
    @title = title
    @url = url
    @short_description = short_description 
    @doi = doi 
    @remote_updated_date = remote_updated_date 
    @remote_created_date = remote_created_date 
    @content_provider_id = content_provider_id 
    @scientific_topic_names = scientific_topics
    @keywords = keywords 
    @licence = licence 
    @difficulty_level = difficulty_level 
    @contributors = contributors 
    @authors = authors 
    @target_audience = target_audience
    @id = id
    @long_description = long_description
  end


  def dump
    hash = {}
    self.instance_variables.each do |var|
      varname = var.to_s.gsub(/@/,'')
      hash[varname] = self.instance_variable_get var
    end
    return hash
  end

  def to_json
    return self.dump.to_json
  end

  def [](var)
    return self.send(var)
  end

end
