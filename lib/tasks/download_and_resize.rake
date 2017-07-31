namespace :download_and_resize do
  desc "Download Images from endpoint"
  task download: :environment do
    response = RestClient.get 'http://54.152.221.29/images.json'
    parsed_response = JSON.parse(response.body)
    parsed_response['images'].each do |image|
      puts image['url']
    end
  end

  desc "Resize Images"
  task resize: :environment do
  end

end
