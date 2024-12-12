StreamingLink.destroy_all
UserStreamingService.destroy_all
StreamingService.destroy_all
MovieWatchlist.destroy_all
User.destroy_all
Country.destroy_all


countries_array = [
  {name: "Afghanistan", code: "AF"},
  {name: "Algeria", code: "DZ"},
  {name: "American Samoa", code: "AS"},
  {name: "Andorra", code: "AD"},
  {name: "Angola", code: "AO"},
  {name: "Anguilla", code: "AI"},
  {name: "Antarctica", code: "AQ"},
  {name: "Antigua and Barbuda", code: "AG"},
  {name: "Argentina", code: "AR"},
  {name: "Armenia", code: "AM"},
  {name: "Aruba", code: "AW"},
  {name: "Australia", code: "AU"},
  {name: "Austria", code: "AT"},
  {name: "Azerbaijan", code: "AZ"},
  {name: "Bahamas", code: "BS"},
  {name: "Bahrain", code: "BH"},
  {name: "Bangladesh", code: "BD"},
  {name: "Barbados", code: "BB"},
  {name: "Belarus", code: "BY"},
  {name: "Belgium", code: "BE"},
  {name: "Belize", code: "BZ"},
  {name: "Benin", code: "BJ"},
  {name: "Bermuda", code: "BM"},
  {name: "Bhutan", code: "BT"},
  {name: "Bolivia, Plurinational State of", code: "BO"},
  {name: "Bonaire, Sint Eustatius and Saba", code: "BQ"},
  {name: "Bosnia and Herzegovina", code: "BA"},
  {name: "Botswana", code: "BW"},
  {name: "Bouvet Island", code: "BV"},
  {name: "Brazil", code: "BR"},
  {name: "British Indian Ocean Territory", code: "IO"},
  {name: "Brunei Darussalam", code: "BN"},
  {name: "Bulgaria", code: "BG"},
  {name: "Burkina Faso", code: "BF"},
  {name: "Burundi", code: "BI"},
  {name: "Cambodia", code: "KH"},
  {name: "Cameroon", code: "CM"},
  {name: "Canada", code: "CA"},
  {name: "Cape Verde", code: "CV"},
  {name: "Cayman Islands", code: "KY"},
  {name: "Central African Republic", code: "CF"},
  {name: "Chad", code: "TD"},
  {name: "Chile", code: "CL"},
  {name: "China", code: "CN"},
  {name: "Christmas Island", code: "CX"},
  {name: "Cocos (Keeling) Islands", code: "CC"},
  {name: "Colombia", code: "CO"},
  {name: "Comoros", code: "KM"},
  {name: "Congo", code: "CG"},
  {name: "Congo, the Democratic Republic of the", code: "CD"},
  {name: "Cook Islands", code: "CK"},
  {name: "Costa Rica", code: "CR"},
  {name: "Croatia", code: "HR"},
  {name: "Cuba", code: "CU"},
  {name: "Curaçao", code: "CW"},
  {name: "Cyprus", code: "CY"},
  {name: "Czech Republic", code: "CZ"},
  {name: "Côte d'Ivoire", code: "CI"},
  {name: "Denmark", code: "DK"},
  {name: "Djibouti", code: "DJ"},
  {name: "Dominica", code: "DM"},
  {name: "Dominican Republic", code: "DO"},
  {name: "Ecuador", code: "EC"},
  {name: "Egypt", code: "EG"},
  {name: "El Salvador", code: "SV"},
  {name: "Equatorial Guinea", code: "GQ"},
  {name: "Eritrea", code: "ER"},
  {name: "Estonia", code: "EE"},
  {name: "Eswatini", code: "SZ"},
  {name: "Ethiopia", code: "ET"},
  {name: "Falkland Islands (Malvinas)", code: "FK"},
  {name: "Faroe Islands", code: "FO"},
  {name: "Fiji", code: "FJ"},
  {name: "Finland", code: "FI"},
  {name: "France", code: "FR"},
  {name: "French Guiana", code: "GF"},
  {name: "French Polynesia", code: "PF"},
  {name: "French Southern Territories", code: "TF"},
  {name: "Gabon", code: "GA"},
  {name: "Gambia", code: "GM"},
  {name: "Georgia", code: "GE"},
  {name: "Germany", code: "DE"},
  {name: "Ghana", code: "GH"},
  {name: "Gibraltar", code: "GI"},
  {name: "Greece", code: "GR"},
  {name: "Greenland", code: "GL"},
  {name: "Grenada", code: "GD"},
  {name: "Guadeloupe", code: "GP"},
  {name: "Guam", code: "GU"},
  {name: "Guatemala", code: "GT"},
  {name: "Guernsey", code: "GG"},
  {name: "Guinea", code: "GN"},
  {name: "Guinea-Bissau", code: "GW"},
  {name: "Guyana", code: "GY"},
  {name: "Haiti", code: "HT"},
  {name: "Heard Island and McDonald Islands", code: "HM"},
  {name: "Holy See (Vatican City State)", code: "VA"},
  {name: "Honduras", code: "HN"},
  {name: "Hong Kong", code: "HK"},
  {name: "Hungary", code: "HU"},
  {name: "Iceland", code: "IS"},
  {name: "India", code: "IN"},
  {name: "Indonesia", code: "ID"},
  {name: "Iran, Islamic Republic of", code: "IR"},
  {name: "Iraq", code: "IQ"},
  {name: "Ireland", code: "IE"},
  {name: "Isle of Man", code: "IM"},
  {name: "Israel", code: "IL"},
  {name: "Italy", code: "IT"},
  {name: "Jamaica", code: "JM"},
  {name: "Japan", code: "JP"},
  {name: "Jersey", code: "JE"},
  {name: "Jordan", code: "JO"},
  {name: "Kazakhstan", code: "KZ"},
  {name: "Kenya", code: "KE"},
  {name: "Kiribati", code: "KI"},
  {name: "Korea, Democratic People's Republic of", code: "KP"},
  {name: "Korea, Republic of", code: "KR"},
  {name: "Kuwait", code: "KW"},
  {name: "Kyrgyzstan", code: "KG"},
  {name: "Lao People's Democratic Republic", code: "LA"},
  {name: "Latvia", code: "LV"},
  {name: "Lebanon", code: "LB"},
  {name: "Lesotho", code: "LS"},
  {name: "Liberia", code: "LR"},
  {name: "Libya", code: "LY"},
  {name: "Liechtenstein", code: "LI"},
  {name: "Lithuania", code: "LT"},
  {name: "Luxembourg", code: "LU"},
  {name: "Macao", code: "MO"},
  {name: "Macedonia, the Former Yugoslav Republic of", code: "MK"},
  {name: "Madagascar", code: "MG"},
  {name: "Malawi", code: "MW"},
  {name: "Malaysia", code: "MY"},
  {name: "Maldives", code: "MV"},
  {name: "Mali", code: "ML"},
  {name: "Malta", code: "MT"},
  {name: "Marshall Islands", code: "MH"},
  {name: "Martinique", code: "MQ"},
  {name: "Mauritania", code: "MR"},
  {name: "Mauritius", code: "MU"},
  {name: "Mayotte", code: "YT"},
  {name: "Mexico", code: "MX"},
  {name: "Micronesia, Federated States of", code: "FM"},
  {name: "Moldova, Republic of", code: "MD"},
  {name: "Monaco", code: "MC"},
  {name: "Mongolia", code: "MN"},
  {name: "Montenegro", code: "ME"},
  {name: "Montserrat", code: "MS"},
  {name: "Morocco", code: "MA"},
  {name: "Mozambique", code: "MZ"},
  {name: "Myanmar", code: "MM"},
  {name: "Namibia", code: "NA"},
  {name: "Nauru", code: "NR"},
  {name: "Nepal", code: "NP"},
  {name: "Netherlands", code: "NL"},
  {name: "New Caledonia", code: "NC"},
  {name: "New Zealand", code: "NZ"},
  {name: "Nicaragua", code: "NI"},
  {name: "Niger", code: "NE"},
  {name: "Nigeria", code: "NG"},
  {name: "Niue", code: "NU"},
  {name: "Norfolk Island", code: "NF"},
  {name: "Northern Mariana Islands", code: "MP"},
  {name: "Norway", code: "NO"},
  {name: "Oman", code: "OM"},
  {name: "Pakistan", code: "PK"},
  {name: "Palau", code: "PW"},
  {name: "Palestine, State of", code: "PS"},
  {name: "Panama", code: "PA"},
  {name: "Papua New Guinea", code: "PG"},
  {name: "Paraguay", code: "PY"},
  {name: "Peru", code: "PE"},
  {name: "Philippines", code: "PH"},
  {name: "Pitcairn", code: "PN"},
  {name: "Poland", code: "PL"},
  {name: "Portugal", code: "PT"},
  {name: "Puerto Rico", code: "PR"},
  {name: "Qatar", code: "QA"},
  {name: "Romania", code: "RO"},
  {name: "Russian Federation", code: "RU"},
  {name: "Rwanda", code: "RW"},
  {name: "Réunion", code: "RE"},
  {name: "Saint Barthélemy", code: "BL"},
  {name: "Saint Helena, Ascension and Tristan da Cunha", code: "SH"},
  {name: "Saint Kitts and Nevis", code: "KN"},
  {name: "Saint Lucia", code: "LC"},
  {name: "Saint Martin (French part)", code: "MF"},
  {name: "Saint Pierre and Miquelon", code: "PM"},
  {name: "Saint Vincent and the Grenadines", code: "VC"},
  {name: "Samoa", code: "WS"},
  {name: "San Marino", code: "SM"},
  {name: "Sao Tome and Principe", code: "ST"},
  {name: "Saudi Arabia", code: "SA"},
  {name: "Senegal", code: "SN"},
  {name: "Serbia", code: "RS"},
  {name: "Seychelles", code: "SC"},
  {name: "Sierra Leone", code: "SL"},
  {name: "Singapore", code: "SG"},
  {name: "Sint Maarten (Dutch part)", code: "SX"},
  {name: "Slovakia", code: "SK"},
  {name: "Slovenia", code: "SI"},
  {name: "Solomon Islands", code: "SB"},
  {name: "Somalia", code: "SO"},
  {name: "South Africa", code: "ZA"},
  {name: "South Georgia and the South Sandwich Islands", code: "GS"},
  {name: "South Sudan", code: "SS"},
  {name: "Spain", code: "ES"},
  {name: "Sri Lanka", code: "LK"},
  {name: "Sudan", code: "SD"},
  {name: "Suriname", code: "SR"},
  {name: "Svalbard and Jan Mayen", code: "SJ"},
  {name: "Sweden", code: "SE"},
  {name: "Switzerland", code: "CH"},
  {name: "Syrian Arab Republic", code: "SY"},
  {name: "Taiwan, Province of China", code: "TW"},
  {name: "Tajikistan", code: "TJ"},
  {name: "Tanzania, United Republic of", code: "TZ"},
  {name: "Thailand", code: "TH"},
  {name: "Timor-Leste", code: "TL"},
  {name: "Togo", code: "TG"},
  {name: "Tokelau", code: "TK"},
  {name: "Tonga", code: "TO"},
  {name: "Trinidad and Tobago", code: "TT"},
  {name: "Tunisia", code: "TN"},
  {name: "Turkey", code: "TR"},
  {name: "Turkmenistan", code: "TM"},
  {name: "Turks and Caicos Islands", code: "TC"},
  {name: "Tuvalu", code: "TV"},
  {name: "Uganda", code: "UG"},
  {name: "Ukraine", code: "UA"},
  {name: "United Arab Emirates", code: "AE"},
  {name: "United Kingdom", code: "GB"},
  {name: "United States", code: "US"},
  {name: "United States Minor Outlying Islands", code: "UM"},
  {name: "Uruguay", code: "UY"},
  {name: "Uzbekistan", code: "UZ"},
  {name: "Vanuatu", code: "VU"},
  {name: "Venezuela, Bolivarian Republic of", code: "VE"},
  {name: "Viet Nam", code: "VN"},
  {name: "Virgin Islands, British", code: "VG"},
  {name: "Virgin Islands, U.S.", code: "VI"},
  {name: "Wallis and Futuna", code: "WF"},
  {name: "Western Sahara", code: "EH"},
  {name: "Yemen", code: "YE"},
  {name: "Zambia", code: "ZM"},
  {name: "Zimbabwe", code: "ZW"},
  {name: "Åland Islands", code: "AX"}
]


streaming_services_array = [
  {name: "The Criterion Channel", source_id: 258},
  {name: "Netflix", source_id: 8},
  {name: "Hulu", source_id: 15},
  {name: "HBO Max", source_id: 384},
  {name: "Amazon Prime Video", source_id: 9},
  {name: "Disney+", source_id: 337},
  {name: "AppleTV+", source_id: 350},
  {name: "Paramount+", source_id: 531},
  {name: "Crave", source_id: 230},
  {name: "Peacock Premium", source_id: 386},
  {name: "ICI TOU.TV", source_id: 146},
  {name: "MUBI", source_id: 11}
]
sorted_streamings = streaming_services_array.sort_by { |services| services[:name] }

countries_array.each do |pays|
  Country.create!(name: pays[:name], code: pays[:code])
end

sorted_streamings.each do |service|
  StreamingService.create!(name: service[:name], source_id: service[:source_id])
end



def create_user(first_name)
  puts "Created #{first_name} to login use: #{first_name}@gmail.com password: 123456"
  user = User.new(first_name: first_name, last_name: 'last_name', email:  "#{first_name}@gmail.com", password: '123456')
  user.country = Country.find_by(name: 'Canada')
  user.streaming_services << StreamingService.find_by(name: "Netflix")
  user.streaming_services << StreamingService.find_by(name: "The Criterion Channel")
  user.streaming_services << StreamingService.find_by(name: "Amazon Prime Video")
  return user.save!
end

danial = create_user('danial')
david = create_user('david')
heather = create_user('heather')

puts 'Creating Movie Watchlists'
watchlist_api_output = [
  {
  "backdrop_path": "/kti9ufHhCKaOLjg2to4RKfrlkmh.jpg",
  "id": 1263421,
  "overview": "It's the ultimate showdown. The toughest fighters from \"Baki Hanma\" and \"Kengan Ashura\" clash in this unprecedented, hard-hitting martial arts crossover.",
  "poster_path": "/etbHJxil0wHvYOCmibzFLsMcl2C.jpg",
  "release_date": "2024-06-05",
  "title": "Baki Hanma VS Kengan Ashura",
  "vote_average": 7.585,
  "runtime": 60,
  "genre": "28",
  "streaming_link": "https://www.themoviedb.org/movie/1263421-vs/watch?locale=CA",
  "watch_providers": [
    {
      "logo_path": "/pbpMk2JmcoNnQwx5JGpXngfoWtp.jpg",
      "provider_id": 8,
      "provider_name": "Netflix",
      "display_priority": 0
    },
    {
      "logo_path": "/kICQccvOh8AIBMHGkBXJ047xeHN.jpg",
      "provider_id": 1796,
      "provider_name": "Netflix basic with Ads",
      "display_priority": 110
    }
  ],
  "trailer_youtube_key": "nWMbcamVl7Y"
},
{
  "backdrop_path": "/nL0q3UcNj4MOMluIUE42bc7PtW0.jpg",
  "id": 1280768,
  "overview": "Lincoln and the Louds are ecstatic to welcome their new Gran-Gran, Myrtle, into the family with a tropical wedding celebration; but the festivities are cut short when an old nemesis from Myrtle's secret agent past appears on the island.",
  "poster_path": "/mh4Mk95u7fdY4D4t5kRGQpQbVFy.jpg",
  "release_date": "2024-06-21",
  "title": "No Time to Spy: A Loud House Movie",
  "vote_average": 7.1,
  "runtime": 81,
  "genre": "28",
  "streaming_link": "https://www.themoviedb.org/movie/1280768-no-time-to-spy-a-loud-house-movie/watch?locale=CA",
  "watch_providers": [
    {
      "logo_path": "/h5DcR0J2EESLitnhR8xLG1QymTE.jpg",
      "provider_id": 531,
      "provider_name": "Paramount Plus",
      "display_priority": 11
    },
    {
      "logo_path": "/hExO4PtimLIYn3kBOrzsejNv7cT.jpg",
      "provider_id": 582,
      "provider_name": "Paramount+ Amazon Channel",
      "display_priority": 13
    },
    {
      "logo_path": "/djTJ7pAkIhmPaN3eTA6wTUrphNG.jpg",
      "provider_id": 606,
      "provider_name": "StackTV Amazon Channel",
      "display_priority": 78
    },
    {
      "logo_path": "/9BgaNQRMDvVlji1JBZi6tcfxpKx.jpg",
      "provider_id": 257,
      "provider_name": "fuboTV",
      "display_priority": 96
    },
    {
      "logo_path": "/tJqmTmQ8jp9WfyaZfApHK8lSywA.jpg",
      "provider_id": 1853,
      "provider_name": "Paramount Plus Apple TV Channel ",
      "display_priority": 116
    },
    {
      "logo_path": "/h5DcR0J2EESLitnhR8xLG1QymTE.jpg",
      "provider_id": 2303,
      "provider_name": "Paramount Plus Premium",
      "display_priority": 166
    },
    {
      "logo_path": "/h5DcR0J2EESLitnhR8xLG1QymTE.jpg",
      "provider_id": 2304,
      "provider_name": "Paramount Plus Basic with Ads",
      "display_priority": 167
    }
  ],
  "trailer_youtube_key": "3gPGMqXUFl0"
},
{
  "backdrop_path": "/6SLyu9ygASsrOqkCpjAwtyG9PWW.jpg",
  "id": 1094556,
  "overview": "Twins Phoebe and Max are enjoying their superhero lifestyle, but when one 'save' goes awry, the Thundermans are sent back to Hiddenville. While Hank and Barb enjoy their return, and Billy and Nora look forward to a normal high school life, Max and Phoebe are determined to regain their superhero status.",
  "poster_path": "/bzFY5gwXOS6WWxQiSeofi1Qa62x.jpg",
  "release_date": "2024-03-07",
  "title": "The Thundermans Return",
  "vote_average": 7.1,
  "runtime": 70,
  "genre": "28",
  "streaming_link": "https://www.themoviedb.org/movie/1094556-the-thundermans-return/watch?locale=CA",
  "watch_providers": [
    {
      "logo_path": "/h5DcR0J2EESLitnhR8xLG1QymTE.jpg",
      "provider_id": 531,
      "provider_name": "Paramount Plus",
      "display_priority": 11
    },
    {
      "logo_path": "/hExO4PtimLIYn3kBOrzsejNv7cT.jpg",
      "provider_id": 582,
      "provider_name": "Paramount+ Amazon Channel",
      "display_priority": 13
    },
    {
      "logo_path": "/tJqmTmQ8jp9WfyaZfApHK8lSywA.jpg",
      "provider_id": 1853,
      "provider_name": "Paramount Plus Apple TV Channel ",
      "display_priority": 116
    },
    {
      "logo_path": "/h5DcR0J2EESLitnhR8xLG1QymTE.jpg",
      "provider_id": 2303,
      "provider_name": "Paramount Plus Premium",
      "display_priority": 166
    },
    {
      "logo_path": "/h5DcR0J2EESLitnhR8xLG1QymTE.jpg",
      "provider_id": 2304,
      "provider_name": "Paramount Plus Basic with Ads",
      "display_priority": 167
    }
  ],
  "trailer_youtube_key": "gYA5WOFhd-Y"
}
]
User.all.each do |user|
  watchlist_api_output.each do |output|
    movie_watchlist = MovieWatchlist.create!(title: output[:title], user: user, poster_path: output[:poster_path], overview: output[:overview], release_date: Date.parse(output[:release_date]), vote_average: output[:vote_average], runtime: output[:runtime], trailer_youtube_key: output[:trailer_youtube_key])
    output[:watch_providers].each do |provider|
      StreamingLink.create!(name: provider[:provider_name], link: output[:streaming_link], movie_watchlist: movie_watchlist)
    end
  end
end
