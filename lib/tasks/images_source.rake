namespace :images_source do
  desc "Download Images from endpoint"
  task populate: :environment do
    response = RestClient.get 'http://54.152.221.29/images.json'
    if response.code == 200
      parsed_response = JSON.parse(response.body)
      if !parsed_response['images'].nil?
        parsed_response['images'].each do |img|
          image = Image.new
          image.image_from_url(img["url"])
          image.save!
        end
      end
    end
  end
end
