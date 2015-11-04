class DelimiterSniffer
  COMMON_DELIMITERS = [
    ' , ',
    ' | ',
    ' '
  ].freeze

  def sniff(data_row)
  	return nil unless data_row
  	#sniff = {}
  	#puts data_row.to_s
  	#COMMON_DELIMITERS.each{ |delim|sniff[delim]=data_row.count(delim) }
  	#sniff = sniff.sort {|a,b| b[1]<=>a[1]}
  	#sniff.size > 0 ? sniff[0][0]: nil
  end

end