module Tinymce::Hammer

  mattr_accessor :install_path, :src, :languages, :themes, :plugins, :setup

  @@install_path = '/javascripts/tiny_mce'

  @@src = false

  @@setup = nil

  @@plugins = ['paste']

  @@languages = ['en']

  @@themes = ['advanced']

  @@init = {
    :paste_convert_headers_to_strong => true,
    :paste_convert_middot_lists => true,
    :paste_remove_spans => true,
    :paste_remove_styles => true,
    :paste_strip_class_attributes => true,
    :theme => 'advanced',
    :theme_advanced_toolbar_align => 'left',
    :theme_advanced_toolbar_location => 'top',
    :theme_advanced_buttons1 => 'bold,italic,strikethrough,blockquote,bullist,numlist,|,link,unlink,image,|,code,,justifyleft,justifycenter,justifyright,justifyfull',
    :theme_advanced_buttons2 => '',
    :theme_advanced_buttons3 => '',
    :valid_elements => "a[href|title,blockquote[cite],br,caption,cite,code,dl,dt,dd,em,i,img[src|alt|title|width|height|align],li,ol,p[id|class|rel|style],pre,q[cite],small,strike,strong/b,sub,sup,u,ul" ,
  }

  def self.init= js
    @@init = js
  end

  def self.init
    @@init
  end

  def self.cache_js
    File.open("#{Rails.root}/public/javascripts/tinymce_hammer.js", 'w') do |file|
      file.write Combiner.combined_js
    end
  end

end
