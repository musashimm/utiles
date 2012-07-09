require 'lib/utiles'

describe NilClass do

  it "noe?" do
    a = nil
    a.noe?.should be_true
  end

  it "is_blank?" do
    a = nil
    a.is_blank?.should be_true
  end

end

describe String do

  it "noe? empty" do
    s = ""
    s.noe?.should be_true
  end

  it "noe? not empty" do
    s = " "
    s.noe?.should be_false
  end

  it "is_blank? blank" do
    s1 = ""
    s2 = " "
    s3 = "\n\t"
    s1.is_blank?.should be_true
    s2.is_blank?.should be_true
    s3.is_blank?.should be_true
  end

  it "is_blank? not blank" do
    s1 = "sad"
    s2 = " asdad"
    s3 = " asdsada asda"
    s1.is_blank?.should be_false
    s2.is_blank?.should be_false
    s2.is_blank?.should be_false
  end
  
  it "grosze" do
		"23".to_currency.should eq("0,23 zł")
	end
	
	it "zlotowki" do
		"123".to_currency.should eq("1,23 zł")
	end
	
	it "zlotowki i male grosze" do
		"1103".to_currency.should eq("11,03 zł")
	end
	
	it "zlotowki i duze grosze" do
		"1123".to_currency.should eq("11,23 zł")
	end
  
  it "male zlotowki i male grosze" do
		"0202".to_currency.should eq("2,02 zł")
	end

  it "Data in 185 GB" do
    "185393114721".to_data_vol.should eq("185 GB")
  end
  
  it "Data in 18 GB" do
    "18093114721".to_data_vol.should eq("18 GB")
  end
  
  it "Data in 1,05 GB" do
    "1053114721".to_data_vol.should eq("1,05 GB")
  end
  
  it "Data in 1 GB" do
    "1003114721".to_data_vol.should eq("1 GB")
  end

  it "Data in 18 GB" do
    "18539311472".to_data_vol.should eq("18,5 GB")
  end
    
  it "Data in 185 MB" do
    "185393114".to_data_vol.should eq("185 MB")
  end
  
  it "Data in 18 MB" do
    "18539311".to_data_vol.should eq("18,5 MB")
  end
  
  it "Data in 1 MB" do
    "1853931".to_data_vol.should eq("1,85 MB")
  end
  
  it "Data in 185 kB" do
    "185322".to_data_vol.should eq("185 kB")
  end
  
  it "Data in 18 kB" do
    "18532".to_data_vol.should eq("18,5 kB")
  end
  
  it "Data in 1,08 kB" do
    "1080".to_data_vol.should eq("1,08 kB")
  end
  
  it "Data in 185 B" do
    "185".to_data_vol.should eq("185 B")
  end
  
  it "Data in 0" do
    "0".to_data_vol.should eq("0")
  end

end

describe Time do

  before do
    secs = 1341225602
    @time = Time.at(secs)
  end

  it "to_s" do
    @time.to_s.should eq("Mon Jul 02 12:40:02 +0200 2012")
  end

  it "to_str" do
    @time.to_str.should eq("2012-07-02 / 12:40:02")
  end

  it "to_str(:minutes)" do
    @time.to_str(:minutes).should eq("2012-07-02 / 12:40")
  end

  it "to_str(:date)" do
    @time.to_str(:date).should eq("2012-07-02")
  end

end

describe Integer do

  it "noe?" do
    a = 1
    a.noe?.should be_false
  end

  it "is_blank?" do
    a = 2
    a.is_blank?.should be_false
  end
  
  it "Data in 185 GB" do
    185393114721.to_data_vol.should eq("185 GB")
  end
  
  it "Data in 18 GB" do
    18093114721.to_data_vol.should eq("18 GB")
  end
  
  it "Data in 1,05 GB" do
    1053114721.to_data_vol.should eq("1,05 GB")
  end
  
  it "Data in 1 GB" do
    1003114721.to_data_vol.should eq("1 GB")
  end

  it "Data in 18 GB" do
    18539311472.to_data_vol.should eq("18,5 GB")
  end
    
  it "Data in 185 MB" do
    185393114.to_data_vol.should eq("185 MB")
  end
  
  it "Data in 18 MB" do
    18539311.to_data_vol.should eq("18,5 MB")
  end
  
  it "Data in 1 MB" do
    1853931.to_data_vol.should eq("1,85 MB")
  end
  
  it "Data in 185 kB" do
    185322.to_data_vol.should eq("185 kB")
  end
  
  it "Data in 18 kB" do
    18532.to_data_vol.should eq("18,5 kB")
  end
  
  it "Data in 1,08 kB" do
    1080.to_data_vol.should eq("1,08 kB")
  end
  
  it "Data in 185 B" do
    185.to_data_vol.should eq("185 B")
  end
  
  it "Data in 0" do
    0.to_data_vol.should eq("0")
  end

end

