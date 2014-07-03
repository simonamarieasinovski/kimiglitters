class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, 
	:styles => { :medium => "300x300>", :thumb => "100x100>" },
	:storage => :s3,
	:bucket => 'kimiglitters',
	:s3_credentials => {:access_key_id => ENV['AKIAJBQMHEK2RSVALDQQ'], :secret_access_key => ENV['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']}
end
