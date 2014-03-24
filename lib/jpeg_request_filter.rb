require "jpeg_request_filter/version"

module JpegRequestFilter
  def initialize(app)
    @app = app
  end

  def call(env)
    if env["PATH_INFO"] =~ /.+\.jpeg$|.+\.JPG$|.+\.JPEG$|.+\.jpe$|.+\.JPE$|.+\.jfif$|.+\.JFIF$/i
      ["PATH_INFO", "REQUEST_PATH", "REQUEST_URI"].each do |k|
        env[k].gsub!(/\.jpeg$|\.JPG$|\.JPEG$|\.jpe|\.JPE|\.jfif|\.JFIF/i, ".jpg")
      end
    end
    res = @app.call env
  end
end
