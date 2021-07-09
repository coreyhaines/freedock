BIKESHARE_PROGRAM = Struct.new(:id, :name, :country_code, :location, :gbfs_system_id, :url, :all_station_information_url, :all_station_status_url) do
  def tracking_hash
    { program_id: id,
      program_name: name
    }
  end
end

BIKESHARE_PROGRAMS = [
  BIKESHARE_PROGRAM.new(
    1,
    "Divvy",
    "US",
    "Chicago, IL",
    "divvy",
    "https://www.divvybikes.com/",
    "https://gbfs.divvybikes.com/gbfs/en/station_information.json",
    "https://gbfs.divvybikes.com/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    2,
    "Bergen Bysykkel",
    "NO",
    "Bergen, NO",
    "bergen-city-bike",
    "https://bergenbysykkel.no/",
    "https://gbfs.urbansharing.com/bergenbysykkel.no/station_information.json",
    "https://gbfs.urbansharing.com/bergenbysykkel.no/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    3,
    "Careem BIKE",
    "AE",
    "Dubai, AE",
    "careem_bike",
    "https://www.careem.com/en-ae/careem-bike/",
    "https://dubai.publicbikesystem.net/customer/ube/gbfs/v1/en/station_information",
    "https://dubai.publicbikesystem.net/customer/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    4,
    "Ecobici",
    "AR",
    "Buenos Aires, AR",
    "bike_buenosaires",
    "https://www.buenosaires.gob.ar/ecobici",
    "https://buenosaires.publicbikesystem.net/customer/ube/gbfs/v1/en/station_information",
    "https://buenosaires.publicbikesystem.net/customer/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    5,
    "city bike Linz",
    "AT",
    "Linz, AT",
    "nextbike_al",
    "https://citybikelinz.at/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_al/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_al/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    6,
    "nextbike Austria",
    "AT",
    "Salzburg, AT",
    "nextbike_at",
    "https://www.nextbike.at/de/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_at/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_at/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    7,
    "nextbike Burgenland Austria",
    "AT",
    "Neusiedler See, AT",
    "nextbike_na",
    "https://www.nextbike.at/de/burgenland/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_na/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_na/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    8,
    "nextbike Klagenfurt Austria",
    "AT",
    "Klagenfurt, AT",
    "nextbike_ka",
    "https://www.nextbike.at/de/klagenfurt/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ka/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ka/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    9,
    "nextbike Niederösterreich Austria",
    "AT",
    "Niederosterreich, AT",
    "nextbike_la",
    "https://www.nextbike.at/de/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_la/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_la/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    10,
    "nextbike Tirol Austria",
    "AT",
    "Serfaus, AT",
    "nextbike_ta",
    "https://www.serfaus.gv.at/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ta/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ta/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    11,
    "Stadtrad Innsbruck Austria",
    "AT",
    "Innsbruck, AT",
    "nextbike_si",
    "https://stadtrad.ivb.at/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_si/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_si/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    12,
    "Greenbike Aruba",
    "AW",
    "Aruba, AW",
    "greenbike_aruba",
    "http://greenbikearuba.com",
    "https://aruba-aw.publicbikesystem.net/ube/gbfs/v1/en/station_information",
    "https://aruba-aw.publicbikesystem.net/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    13,
    "BL bike",
    "BA",
    "Banja Luka, BA",
    "nextbike_bj",
    "https://www.nextbike.ba/sr/banjaluka/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bj/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bj/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    14,
    "Sarajevo Bosnia and Herzegovina",
    "BA",
    "Sarajevo, BA",
    "nextbike_ba",
    "https://www.nextbike.ba/bs/sarajevo/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ba/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ba/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    15,
    "Zenica",
    "BA",
    "Zenica, BA",
    "nextbike_bz",
    "https://www.nextbike.ba/bs/zenica/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bz/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bz/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    16,
    "Bike Itaú - Pernambuco",
    "BR",
    "Recife, BR",
    "bike_pe",
    "https://bikeitau.com.br/bikepe",
    "https://recife-br.publicbikesystem.net/ube/gbfs/v1/en/station_information",
    "https://recife-br.publicbikesystem.net/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    17,
    "Bike Itaú - Poa",
    "BR",
    "Porto Alegre, BR",
    "bike_poa",
    "https://bikeitau.com.br/bikepoa",
    "https://portoalegre-br.publicbikesystem.net/ube/gbfs/v1/en/station_information",
    "https://portoalegre-br.publicbikesystem.net/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    18,
    "Bike Itaú - Rio",
    "BR",
    "Rio de Janeiro, BR",
    "bike_rio",
    "https://bikeitau.com.br/bikerio/",
    "https://riodejaneiro-br.publicbikesystem.net/ube/gbfs/v1/en/station_information",
    "https://riodejaneiro-br.publicbikesystem.net/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    19,
    "Bike Itaú - Riviera",
    "BR",
    "Riviera, BR",
    "rivi_bike",
    "https://www.rivieradesaolourenco.com/rivibike-2/",
    "https://riviera.publicbikesystem.net/ube/gbfs/v1/en/station_information",
    "https://riviera.publicbikesystem.net/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    20,
    "Bike Itaú - Salvador",
    "BR",
    "Salvador, BR",
    "bike_salvador",
    "https://bikeitau.com.br/bikesalvador/",
    "https://salvador-br.publicbikesystem.net/ube/gbfs/v1/en/station_information",
    "https://salvador-br.publicbikesystem.net/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    21,
    "Bike Itaú - Sampa",
    "BR",
    "São Paulo, BR",
    "bike_sampa",
    "https://bikeitau.com.br/bikesampa",
    "https://saopaulo-br.publicbikesystem.net/ube/gbfs/v1/en/station_information",
    "https://saopaulo-br.publicbikesystem.net/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    22,
    "Bike VV",
    "BR",
    "Vila Velha, BR",
    "bike_vv",
    "https://www.bikevv.com.br/",
    "https://vilavelha-br.publicbikesystem.net/ube/gbfs/v1/en/station_information",
    "https://vilavelha-br.publicbikesystem.net/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    23,
    "Accès Vélo",
    "CA",
    "Saguenay, QC",
    "saguenay_bike",
    "https://sts.saguenay.ca/infos-pratiques/acces-velo-1/acces-velo",
    "https://saguenay.publicbikesystem.net/customer/ube/gbfs/v1/en/station_information",
    "https://saguenay.publicbikesystem.net/customer/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    24,
    "Bike Share Toronto",
    "CA",
    "Toronto, ON",
    "bike_share_toronto",
    "https://www.bikesharetoronto.com/",
    "https://toronto-us.publicbikesystem.net/customer/ube/gbfs/v1/en/station_information",
    "https://toronto-us.publicbikesystem.net/customer/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    25,
    "BIXI-Montreal",
    "CA",
    "Montreal, QC",
    "Bixi_MTL",
    "https://www.bixi.com/",
    "https://gbfs.velobixi.com/gbfs/en/station_information.json",
    "https://gbfs.velobixi.com/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    26,
    "Lime Calgary",
    "CA",
    "Calgary, CA",
    "lime_calgary",
    "https://www.li.me/",
    "https://data.lime.bike/api/partners/v1/gbfs/calgary/station_information",
    "https://data.lime.bike/api/partners/v1/gbfs/calgary/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    27,
    "Lime Edmonton",
    "CA",
    "Edmontan, CA",
    "lime_edmonton",
    "https://www.li.me/",
    "https://data.lime.bike/api/partners/v1/gbfs/edmonton/station_information",
    "https://data.lime.bike/api/partners/v1/gbfs/edmonton/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    28,
    "Lime Ottawa",
    "CA",
    "Ottowa, CA",
    "lime_ottawa",
    "https://www.li.me/",
    "https://data.lime.bike/api/partners/v1/gbfs/ottawa/station_information",
    "https://data.lime.bike/api/partners/v1/gbfs/ottawa/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    29,
    "Mobi Bike Share",
    "CA",
    "Vancouver, BC",
    "mobi_bikes",
    "https://www.mobibikes.ca/",
    "https://vancouver-gbfs.smoove.pro/gbfs/en/station_information.json",
    "https://vancouver-gbfs.smoove.pro/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    30,
    "Roll Calgary",
    "CA",
    "Calgary, CA",
    "roll_technologies_ca",
    "https://rollscooters.com",
    "https://data.rollapi.com/v1/gbfs/calgary/station_information.json",
    "https://data.rollapi.com/v1/gbfs/calgary/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    31,
    "Roll Kelowna",
    "CA",
    "Kelowna, CA",
    "roll_technologies_ca",
    "https://rollscooters.com",
    "https://data.rollapi.com/v1/gbfs/kelowna/station_information.json",
    "https://data.rollapi.com/v1/gbfs/kelowna/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    32,
    "Roll Ottawa",
    "CA",
    "Ottowa, CA",
    "roll_technologies_ca",
    "https://rollscooters.com",
    "https://data.rollapi.com/v1/gbfs/ottawa/station_information.json",
    "https://data.rollapi.com/v1/gbfs/ottawa/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    33,
    "Sobi Hamilton",
    "CA",
    "Hamilton Ontario, ON",
    "sobi_hamilton",
    "https://hamilton.socialbicycles.com/",
    "http://hamilton.socialbicycles.com/opendata/station_information.json",
    "http://hamilton.socialbicycles.com/opendata/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    34,
    "Donkey Republic Le Locle",
    "CH",
    "Le Locle, CH",
    "donkey_le_locle",
    "https://www.donkey.bike/cities/bike-rental-le-locle/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_le_locle/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_le_locle/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    35,
    "Donkey Republic Neuchâtel",
    "CH",
    "Neuchâtel, CH",
    "donkey_neuchatel",
    "https://www.donkey.bike/cities/bike-rental-neuchatel/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_neuchatel/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_neuchatel/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    36,
    "Donkey Republic Sion",
    "CH",
    "Sion, CH",
    "donkey_sion",
    "https://www.donkey.bike/cities/bike-rental-sion/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_sion/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_sion/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    37,
    "Donkey Republic Thun",
    "CH",
    "Thun, CH",
    "donkey_thun",
    "https://www.donkey.bike/cities/bike-rental-thun/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_thun/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_thun/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    38,
    "Donkey Republic Yverdon-les-Bains",
    "CH",
    "Yverdon Les Bains, CH",
    "donkey_yverdon-les-bains",
    "https://www.donkey.bike/cities/bike-rental-yverdon-les-bains/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_yverdon-les-bains/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_yverdon-les-bains/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    39,
    "nextbike Switzerland",
    "CH",
    "Switzerland, CH",
    "nextbike_ch",
    "https://www.nextbike.ch/de/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ch/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ch/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    40,
    "sharedmobility.ch",
    "CH",
    "Switzerland, CH",
    "sharedmobility.ch",
    "https://www.sharedmobility.ch/info",
    "https://www.sharedmobility.ch/station_information.json",
    "https://www.sharedmobility.ch/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    41,
    "Bike Itaú - Santiago",
    "CL",
    "Santiago, CL",
    "bike_santiago",
    "https://www.bikesantiago.cl/",
    "https://santiagodc.publicbikesystem.net/ube/gbfs/v1/en/station_information",
    "https://santiagodc.publicbikesystem.net/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    42,
    "nextbike Cyprus",
    "CY",
    "Cyprus, CY",
    "nextbike_cy",
    "https://www.nextbike.com.cy/el/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_cy/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_cy/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    43,
    "Velespeed",
    "CY",
    "Nicosia, CY",
    "velespeed",
    "https://en.velespeed.net/",
    "https://nicosia.publicbikesystem.net//ube/gbfs/v1/en/station_information",
    "https://nicosia.publicbikesystem.net//ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    44,
    "nextbike Berounsko",
    "CZ",
    "Berounsko, CZ",
    "nextbike_td",
    "https://www.nextbikeczech.com/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_td/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_td/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    45,
    "nextbike Brno",
    "CZ",
    "Brno, CZ",
    "nextbike_te",
    "https://www.nextbikeczech.com/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_te/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_te/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    46,
    "nextbike Frýdek-Místek",
    "CZ",
    "Frýdek-Místek, CZ",
    "nextbike_ts",
    "https://www.nextbikeczech.com/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ts/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ts/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    47,
    "nextbike Havířov",
    "CZ",
    "Havířov, CZ",
    "nextbike_th",
    "https://www.nextbikeczech.com/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_th/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_th/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    48,
    "nextbike Hradec Králové",
    "CZ",
    "Hradec Králové, CZ",
    "nextbike_tl",
    "https://www.nextbikeczech.com/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_tl/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_tl/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    49,
    "nextbike Kladno",
    "CZ",
    "Kladno, CZ",
    "nextbike_tk",
    "https://www.nextbikeczech.com/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_tk/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_tk/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    50,
    "nextbike Mladoboleslavsko",
    "CZ",
    "Mladoboleslavsko, CZ",
    "nextbike_tq",
    "https://www.nextbikeczech.com/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_tq/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_tq/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    51,
    "nextbike Olomouc",
    "CZ",
    "Olomouc, CZ",
    "nextbike_ti",
    "https://www.nextbikeczech.com/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ti/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ti/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    52,
    "nextbike Opava",
    "CZ",
    "Opava, CZ",
    "nextbike_tj",
    "https://www.nextbikeczech.com/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_tj/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_tj/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    53,
    "nextbike Ostrava",
    "CZ",
    "Ostrava, CZ",
    "nextbike_to",
    "https://www.nextbikeczech.com/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_to/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_to/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    54,
    "nextbike Pardubice",
    "CZ",
    "Pardubice, CZ",
    "nextbike_tm",
    "https://www.nextbikeczech.com/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_tm/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_tm/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    55,
    "nextbike Praha",
    "CZ",
    "Praha, CZ",
    "nextbike_tg",
    "https://www.nextbikeczech.com/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_tg/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_tg/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    56,
    "nextbike Prostejov",
    "CZ",
    "Prostejov, CZ",
    "nextbike_cz",
    "https://www.nextbikeczech.com/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_cz/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_cz/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    57,
    "nextbike Uherské Hradiště",
    "CZ",
    "Uherské Hradiště, CZ",
    "nextbike_tt",
    "https://www.nextbikeczech.com/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_tt/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_tt/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    58,
    "Bergisches e-Bike",
    "DE",
    "Bergisches e-Bike, DE",
    "nextbike_ac",
    "https://www.nextbike.de/de/bergisches-ebike/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ac/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ac/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    59,
    "Berlin-Buch Campus",
    "DE",
    "Berlin-Buch, DE",
    "nextbike_cb",
    "https://www.nextbike.de/de/berlin-buch/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_cb/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_cb/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    60,
    "Bonn nextbike",
    "DE",
    "Bonn, DE",
    "nextbike_bf",
    "https://www.nextbike.de/de/bonn/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bf/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bf/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    61,
    "Donkey Republic Berlin",
    "DE",
    "Berlin, DE",
    "donkey_berlin",
    "https://www.donkey.bike/cities/bike-rental-berlin/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_berlin/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_berlin/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    62,
    "Donkey Republic Freiburg",
    "DE",
    "Freiburg, DE",
    "donkey_freiburg",
    "https://www.donkey.bike/cities/bike-rental-freiburg/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_freiburg/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_freiburg/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    63,
    "Donkey Republic Munich",
    "DE",
    "Munich, DE",
    "donkey_munich",
    "https://www.donkey.bike/cities/bike-rental-munich/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_munich/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_munich/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    64,
    "flowBie Siggi",
    "DE",
    "Bielefeld, DE",
    "nextbike_dg",
    "https://www.nextbike.de/de/bielefeld/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dg/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dg/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    65,
    "Frelo Freiburg",
    "DE",
    "Freiburg, DE",
    "nextbike_df",
    "https://www.frelo-freiburg.de/de/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_df/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_df/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    66,
    "Graben - ready4green",
    "DE",
    "Graben, DE",
    "nextbike_da",
    "https://www.nextbike.de/de/ready4green/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_da/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_da/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    67,
    "KVB Rad Germany",
    "DE",
    "Köln, DE",
    "nextbike_kg",
    "https://www.kvb-rad.de/de/koeln/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_kg/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_kg/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    68,
    "KVV.nextbike",
    "DE",
    "Karlsruhe, DE",
    "nextbike_fg",
    "https://www.kvv-nextbike.de/de/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_fg/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_fg/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    69,
    "Lime Hamburg",
    "DE",
    "Hamburg, DE",
    "lime_hamburg",
    "https://li.me",
    "https://data.lime.bike/api/partners/v1/gbfs/hamburg/station_information",
    "https://data.lime.bike/api/partners/v1/gbfs/hamburg/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    70,
    "metropolradruhr Bochum",
    "DE",
    "Bochum, DE",
    "nextbike_ms",
    "https://www.metropolradruhr.de/de/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ms/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ms/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    71,
    "metropolradruhr Germany",
    "DE",
    "metropolradruhr, DE",
    "nextbike_mr",
    "https://www.metropolradruhr.de/de/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_mr/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_mr/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    72,
    "MOBIbike",
    "DE",
    "Dresden, DE",
    "nextbike_dx",
    "https://www.nextbike.de/de/dresden/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dx/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dx/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    73,
    "nextbike Berlin",
    "DE",
    "Berlin, DE",
    "nextbike_bn",
    "https://www.nextbike.de/de/berlin/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bn/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bn/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    74,
    "nextbike Düsseldorf",
    "DE",
    "Düsseldorf, DE",
    "nextbike_dd",
    "https://www.nextbike.de/de/duesseldorf/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dd/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dd/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    75,
    "nextbike Erfurt",
    "DE",
    "Erfurt, DE",
    "nextbike_ef",
    "https://www.nextbike.de/de/erfurt/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ef/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ef/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    76,
    "nextbike Frankfurt",
    "DE",
    "Frankfurt, DE",
    "nextbike_ff",
    "https://www.nextbike.de/de/frankfurt/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ff/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ff/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    77,
    "nextbike Gießen",
    "DE",
    "Gießen, DE",
    "nextbike_ng",
    "https://www.nextbike.de/de/giessen/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ng/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ng/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    78,
    "nextbike Gütersloh",
    "DE",
    "Gütersloh, DE",
    "nextbike_dj",
    "https://www.nextbike.de/de/guetersloh/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dj/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dj/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    79,
    "nextbike Hannover",
    "DE",
    "Hannover, DE",
    "nextbike_dh",
    "https://www.nextbike.de/de/hannover/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dh/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dh/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    80,
    "nextbike Kassel",
    "DE",
    "Kassel, DE",
    "nextbike_dk",
    "https://www.nextbike.de/de/kassel/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dk/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dk/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    81,
    "nextbike Lahr (Pedelecs)",
    "DE",
    "Lahr, DE",
    "nextbike_lr",
    "https://www.nextbike.de/de/lahr/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_lr/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_lr/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    82,
    "nextbike Leipzig",
    "DE",
    "Leipzig, DE",
    "nextbike_le",
    "https://www.nextbike.de/de/leipzig/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_le/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_le/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    83,
    "nextbike Lippstadt",
    "DE",
    "Lippstadt, DE",
    "nextbike_li",
    "https://www.nextbike.de/de/lippstadt/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_li/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_li/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    84,
    "nextbike Marburg",
    "DE",
    "Marburg, DE",
    "nextbike_nm",
    "https://www.nextbike.de/de/marburg/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_nm/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_nm/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    85,
    "nextbike Norderstedt",
    "DE",
    "Norderstedt, DE",
    "nextbike_nn",
    "https://www.nextbike.de/de/norderstedt/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_nn/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_nn/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    86,
    "nextbike Offenburg",
    "DE",
    "Offenburg, DE",
    "nextbike_dl",
    "https://www.nextbike.de/de/offenburg/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dl/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dl/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    87,
    "nextbike Quickborn",
    "DE",
    "Quickborn, DE",
    "nextbike_dq",
    "https://www.nextbike.de/de/quickborn/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dq/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dq/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    88,
    "nextbike Rüsselsheim am Main",
    "DE",
    "Rüsselsheim am Main, DE",
    "nextbike_do",
    "https://www.nextbike.de/de/ruesselsheim/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_do/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_do/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    89,
    "nextbike Wiesbaden",
    "DE",
    "Wiesbaden, DE",
    "nextbike_wn",
    "https://www.nextbike.de/de/wiesbaden/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_wn/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_wn/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    90,
    "nextbike Würzburg",
    "DE",
    "Würzburg, DE",
    "nextbike_dt",
    "https://www.nextbike.de/de/wuerzburg/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dt/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dt/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    91,
    "Nibelungen-Bike",
    "DE",
    "Braunschweig, DE",
    "nextbike_dn",
    "https://www.nextbike.de/de/braunschweig/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dn/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dn/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    92,
    "Oeynrad",
    "DE",
    "Bad Oeynhausen, DE",
    "nextbike_dz",
    "https://www.nextbike.de/de/badoeynhausen/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dz/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dz/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    93,
    "Potsdam Rad",
    "DE",
    "Potsdam, DE",
    "nextbike_dc",
    "https://www.nextbike.de/de/potsdam/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dc/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dc/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    94,
    "RSVG-Bike",
    "DE",
    "RSVG, DE",
    "nextbike_rb",
    "https://www.nextbike.de/de/rsvg/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_rb/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_rb/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    95,
    "RVK",
    "DE",
    "RVK-Gesamt, DE",
    "nextbike_dr",
    "https://www.nextbike.de/de/rvk/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dr/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dr/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    96,
    "Santander nextbike Mönchengladbach",
    "DE",
    "Mönchengladbach, DE",
    "nextbike_sn",
    "https://www.nextbike.de/de/moenchengladbach/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_sn/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_sn/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    97,
    "Sprottenflotte",
    "DE",
    "KielRegion, DE",
    "nextbike_sf",
    "https://www.nextbike.de/de/kielregion/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_sf/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_sf/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    98,
    "SWA Rad",
    "DE",
    "Augsburg, DE",
    "nextbike_ag",
    "https://www.swa-rad.de/de/augsburg/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ag/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ag/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    99,
    "UsedomRad Germany",
    "DE",
    "Usedom, DE",
    "nextbike_ur",
    "https://usedomrad.de/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ur/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ur/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    100,
    "VAG_Rad",
    "DE",
    "Nürnberg, DE",
    "nextbike_dv",
    "https://www.vagrad.de/de/nuernberg/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dv/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dv/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    101,
    "VRNnextbike",
    "DE",
    "Lampertheim, DE",
    "nextbike_vn",
    "https://www.vrnnextbike.de/de/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_vn/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_vn/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    102,
    "WK-Bike (Bremen)",
    "DE",
    "Bremen, DE",
    "nextbike_wk",
    "https://www.wk-bike.de/de/bremen/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_wk/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_wk/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    103,
    "wupsiRad Leverkusen",
    "DE",
    "Leverkusen, DE",
    "nextbike_dw",
    "https://www.wupsirad.de/de/leverkusen/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dw/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_dw/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    104,
    "Donkey Republic Aalborg",
    "DK",
    "Aalborg, DK",
    "donkey_aalborg",
    "https://www.donkey.bike/cities/bike-rental-aalborg/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_aalborg/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_aalborg/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    105,
    "Donkey Republic Aarhus",
    "DK",
    "Aarhus, DK",
    "donkey_aarhus",
    "https://www.donkey.bike/cities/bike-rental-aarhus/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_aarhus/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_aarhus/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    106,
    "Donkey Republic Bandholm",
    "DK",
    "Bandholm, DK",
    "donkey_bandholm",
    "https://www.donkey.bike/cities/bike-rental-bandholm/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_bandholm/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_bandholm/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    107,
    "Donkey Republic Copenhagen",
    "DK",
    "Copenhagen, DK",
    "donkey_copenhagen",
    "https://www.donkey.bike/cities/bike-rental-copenhagen/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_copenhagen/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_copenhagen/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    108,
    "Donkey Republic Frederikshavn",
    "DK",
    "Frederikshavn, DK",
    "donkey_frederikshavn",
    "https://www.donkey.bike/cities/bike-rental-frederikshavn/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_frederikshavn/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_frederikshavn/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    109,
    "Donkey Republic Glostrup",
    "DK",
    "Glostrup, DK",
    "donkey_glostrup",
    "https://www.donkey.bike/cities/bike-rental-glostrup/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_glostrup/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_glostrup/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    110,
    "Donkey Republic Klampenborg",
    "DK",
    "Klampenborg, DK",
    "donkey_klampenborg",
    "https://www.donkey.bike/cities/bike-rental-klampenborg/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_klampenborg/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_klampenborg/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    111,
    "Donkey Republic Lalandia (Rødby)",
    "DK",
    "Lalandia (Rødby), DK",
    "donkey_lalandia",
    "https://www.donkey.bike/cities/bike-rental-lalandia-rodby/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_lalandia/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_lalandia/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    112,
    "Donkey Republic Odense",
    "DK",
    "Odense, DK",
    "donkey_odense",
    "https://www.donkey.bike/cities/bike-rental-odense/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_odense/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_odense/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    113,
    "Donkey Republic Store Heddinge",
    "DK",
    "Store Heddinge, DK",
    "donkey_store_heddinge",
    "https://www.donkey.bike/cities/bike-rental-store-heddinge/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_store_heddinge/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_store_heddinge/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    114,
    "BiciMAD (unofficial)",
    "ES",
    "Madrid, ES",
    "bici_madrid",
    "https://www.bicimad.com/",
    "https://gbfs.bici.madrid/en/station_information",
    "https://gbfs.bici.madrid/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    115,
    "Bicing",
    "ES",
    "Barcelona, ES",
    "bike_barcelona",
    "https://www.bicing.barcelona/",
    "https://barcelona-sp.publicbikesystem.net/customer/ube/gbfs/v1/en/station_information",
    "https://barcelona-sp.publicbikesystem.net/customer/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    116,
    "Bilbaobizi (Bilbao)",
    "ES",
    "Bilbao, ES",
    "nextbike_bo",
    "https://www.bilbaobizi.bilbao.eus/eu/bilbao/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bo/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bo/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    117,
    "Dbizi",
    "ES",
    "Donostia, ES",
    "sansebastian",
    "https://www.dbizi.eus",
    "https://sansebastian.publicbikesystem.net/customer/ube/gbfs/v1/en/station_information",
    "https://sansebastian.publicbikesystem.net/customer/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    118,
    "Donkey Republic Barcelona",
    "ES",
    "Barcelona, ES",
    "donkey_barcelona",
    "https://www.donkey.bike/cities/bike-rental-barcelona/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_barcelona/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_barcelona/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    119,
    "ibizi",
    "ES",
    "Ibiza-City, ES",
    "nextbike_ei",
    "https://www.nextbike.es/es/ibiza/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ei/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ei/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    120,
    "Lovesharing (Canary Islands)",
    "ES",
    "Canary Island, ES",
    "nextbike_ls",
    "https://www.lovesharing.com/bikesharing/es/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ls/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ls/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    121,
    "Sitycleta (Las Palmas)",
    "ES",
    "Las Palmas de Gran Canaria, ES",
    "nextbike_el",
    "https://www.sitycleta.com/es/laspalmas/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_el/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_el/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    122,
    "Donkey Republic Hamina",
    "FI",
    "Hamina",
    "donkey_hamina",
    "https://www.donkey.bike/cities/bike-rental-hamina/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_hamina/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_hamina/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    123,
    "Donkey Republic Iisalmi",
    "FI",
    "Iisalmi",
    "donkey_iisalmi",
    "https://www.donkey.bike/cities/bike-rental-iisalmi/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_iisalmi/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_iisalmi/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    124,
    "Donkey Republic Imatra",
    "FI",
    "Imatra",
    "donkey_imatra",
    "https://www.donkey.bike/cities/bike-rental-imatra/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_imatra/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_imatra/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    125,
    "Donkey Republic Kotka",
    "FI",
    "Kotka",
    "donkey_kotka",
    "https://www.donkey.bike/cities/bike-rental-kotka/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_kotka/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_kotka/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    126,
    "Donkey Republic Kouvola",
    "FI",
    "Kouvola",
    "donkey_kouvola",
    "https://www.donkey.bike/cities/bike-rental-kouvola/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_kouvola/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_kouvola/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    127,
    "Donkey Republic Lappeenranta",
    "FI",
    "Lappeenranta",
    "donkey_lappeenranta",
    "https://www.donkey.bike/cities/bike-rental-lappeenranta/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_lappeenranta/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_lappeenranta/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    128,
    "Donkey Republic Mäntsälä",
    "FI",
    "Mäntsälä",
    "donkey_maentsaelae",
    "https://www.donkey.bike/cities/bike-rental-mantsala/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_maentsaelae/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_maentsaelae/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    129,
    "Donkey Republic Porvoo",
    "FI",
    "Porvoo",
    "donkey_porvoo",
    "https://www.donkey.bike/cities/bike-rental-porvoo/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_porvoo/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_porvoo/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    130,
    "C-Vélo",
    "FR",
    "Clermont-Ferrand, FR",
    "CVelo_FR_Clermont-Ferrand",
    "https://www.c-velo.fr",
    "https://clermont-gbfs.klervi.net/gbfs/en/station_information.json",
    "https://clermont-gbfs.klervi.net/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    131,
    "Donkey Republic Valenciennes",
    "FR",
    "Valenciennes",
    "donkey_valenciennes",
    "https://www.donkey.bike/cities/bike-rental-valenciennes/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_valenciennes/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_valenciennes/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    132,
    "Libélo",
    "FR",
    "Valence, FR",
    "libelo",
    "http://www.citea.info/presentation/?rub_code=92",
    "https://valencefr.publicbikesystem.net/customer/ube/gbfs/v1/en/station_information",
    "https://valencefr.publicbikesystem.net/customer/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    133,
    "Lime Paris",
    "FR",
    "Paris, FR",
    "lime_paris",
    "https://li.me/",
    "https://data.lime.bike/api/partners/v1/gbfs/paris/station_information",
    "https://data.lime.bike/api/partners/v1/gbfs/paris/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    134,
    "Optymo Belfort",
    "FR",
    "Belfort, FR",
    "Optymo_FR_Belfort",
    "https://www.optymo.fr/",
    "https://belfort-gbfs.klervi.net/gbfs/en/station_information.json",
    "https://belfort-gbfs.klervi.net/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    135,
    "Vélib' Metropole",
    "FR",
    "Paris, FR",
    "Paris",
    "https://www.velib-metropole.fr/",
    "https://velib-metropole-opendata.smoove.pro/opendata/Velib_Metropole/station_information.json",
    "https://velib-metropole-opendata.smoove.pro/opendata/Velib_Metropole/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    136,
    "Vélivert",
    "FR",
    "Saint-Etienne, FR",
    "Velivert_FR_Saint-Etienne",
    "https://www.velivert.fr/",
    "https://saint-etienne-gbfs.klervi.net/gbfs/en/station_information.json",
    "https://saint-etienne-gbfs.klervi.net/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    137,
    "Vélocéo",
    "FR",
    "Vannes, FR",
    "Veloceo_FR_Vannes",
    "https://veloceo.kiceo.fr/",
    "https://vannes-gbfs.klervi.net/gbfs/en/station_information.json",
    "https://vannes-gbfs.klervi.net/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    138,
    "Vélopop",
    "FR",
    "Avignon, FR",
    "Vélopop_FR_Avignon",
    "https://www.velopop.fr/",
    "https://avignon-gbfs.klervi.net/gbfs/en/station_information.json",
    "https://avignon-gbfs.klervi.net/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    139,
    "BelfastBikes",
    "GB",
    "Belfast, GB",
    "nextbike_bu",
    "https://www.belfastbikes.co.uk/en/belfast/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bu/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bu/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    140,
    "Beryl - BCP",
    "GB",
    "Bournemouth, Christchurch, Poole, GB",
    "beryl_bcp",
    "https://www.beryl.cc",
    "https://gbfs.beryl.cc/v2/BCP/station_information.json",
    "https://gbfs.beryl.cc/v2/BCP/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    141,
    "Beryl - Hereford",
    "GB",
    "Hereford, GB",
    "beryl_hereford",
    "https://www.beryl.cc",
    "https://gbfs.beryl.cc/v2/Hereford/station_information.json",
    "https://gbfs.beryl.cc/v2/Hereford/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    142,
    "Beryl - Isle of Wight",
    "GB",
    "Isle of Wight, GB",
    "beryl_isle_of_wight",
    "https://www.beryl.cc",
    "https://gbfs.beryl.cc/v2/Isle_of_Wight/station_information.json",
    "https://gbfs.beryl.cc/v2/Isle_of_Wight/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    143,
    "Beryl - Norwich",
    "GB",
    "Norwich, GB",
    "beryl_norwich",
    "https://www.beryl.cc",
    "https://gbfs.beryl.cc/v2/Norwich/station_information.json",
    "https://gbfs.beryl.cc/v2/Norwich/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    144,
    "Beryl - Watford",
    "GB",
    "Watford, GB",
    "beryl_watford",
    "https://www.beryl.cc",
    "https://gbfs.beryl.cc/v2/Watford/station_information.json",
    "https://gbfs.beryl.cc/v2/Watford/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    145,
    "Beryl - West Midlands",
    "GB",
    "West Midlands, GB",
    "beryl_west_midlands",
    "https://www.beryl.cc",
    "https://gbfs.beryl.cc/v2/West_Midlands/station_information.json",
    "https://gbfs.beryl.cc/v2/West_Midlands/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    146,
    "Co-bikes",
    "GB",
    "Exeter, GB",
    "nextbike_eu",
    "https://www.co-bikes.co.uk/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_eu/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_eu/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    147,
    "Donkey Republic Charlbury",
    "GB",
    "Charlbury, ",
    "donkey_charlbury",
    "https://www.donkey.bike/cities/bike-rental-charlbury/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_charlbury/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_charlbury/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    148,
    "Donkey Republic Cheltenham Spa",
    "GB",
    "Cheltenham Spa",
    "donkey_cheltenham_spa",
    "https://www.donkey.bike/cities/bike-rental-cheltenham-spa/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_cheltenham_spa/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_cheltenham_spa/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    149,
    "Donkey Republic Cirencester",
    "GB",
    "Cirencester",
    "donkey_cirencester",
    "https://www.donkey.bike/cities/bike-rental-cirencester/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_cirencester/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_cirencester/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    150,
    "Donkey Republic Henley On Thames",
    "GB",
    "Henley On Thames",
    "donkey_henley_on_thames",
    "https://www.donkey.bike/cities/bike-rental-henley-on-thames/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_henley_on_thames/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_henley_on_thames/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    151,
    "Donkey Republic Kingham",
    "GB",
    "Kingham",
    "donkey_kingham",
    "https://www.donkey.bike/cities/bike-rental-kingham/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_kingham/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_kingham/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    152,
    "Donkey Republic Moreton In Marsh",
    "GB",
    "Moreton In Marsh",
    "donkey_moreton_in_marsh",
    "https://www.donkey.bike/cities/bike-rental-moreton-in-marsh/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_moreton_in_marsh/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_moreton_in_marsh/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    153,
    "Donkey Republic Oxford",
    "GB",
    "Oxford",
    "donkey_oxford",
    "https://www.donkey.bike/cities/bike-rental-oxford/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_oxford/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_oxford/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    154,
    "Donkey Republic Plymouth",
    "GB",
    "Plymouth",
    "donkey_plymouth",
    "https://www.donkey.bike/cities/bike-rental-plymouth/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_plymouth/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_plymouth/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    155,
    "Donkey Republic Stroud",
    "GB",
    "Stroud",
    "donkey_stroud",
    "https://www.donkey.bike/cities/bike-rental-stroud/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_stroud/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_stroud/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    156,
    "Donkey Republic Tetbury",
    "GB",
    "Tetbury",
    "donkey_tetbury",
    "https://www.donkey.bike/cities/bike-rental-tetbury/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_tetbury/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_tetbury/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    157,
    "Donkey Republic The Cotswold Water Park",
    "GB",
    "The Cotswold Water Park",
    "donkey_the_cotswold_water_park",
    "https://www.donkey.bike/cities/bike-rental-the-cotswold-water-park/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_the_cotswold_water_park/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_the_cotswold_water_park/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    158,
    "Donkey Republic Whichford",
    "GB",
    "Whichford",
    "donkey_whichford",
    "https://www.donkey.bike/cities/bike-rental-whichford/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_whichford/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_whichford/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    159,
    "Donkey Republic Worthing",
    "GB",
    "Worthing",
    "donkey_worthing",
    "https://www.donkey.bike/cities/bike-rental-worthing/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_worthing/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_worthing/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    160,
    "nextbike Cardiff",
    "GB",
    "Cardiff, GB",
    "nextbike_uc",
    "https://www.nextbike.co.uk/en/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_uc/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_uc/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    161,
    "nextbike Glasgow",
    "GB",
    "Glasgow, GB",
    "nextbike_gg",
    "https://www.nextbike.co.uk/en/glasgow/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_gg/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_gg/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    162,
    "nextbike UK",
    "GB",
    "Stirling, GB",
    "nextbike_uk",
    "https://www.nextbike.co.uk/en/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_uk/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_uk/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    163,
    "nextbike Warwick",
    "GB",
    "University of Warwick, GB",
    "nextbike_up",
    "https://www.nextbike.co.uk/en/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_up/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_up/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    164,
    "Santander Cycles - Brunel",
    "GB",
    "Brunel University, GB",
    "nextbike_ub",
    "https://www.santandercycles.co.uk/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ub/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ub/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    165,
    "Santander Cycles - Milton Keynes",
    "GB",
    "Milton Keynes, GB",
    "nextbike_ku",
    "https://www.santandercycles.co.uk/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ku/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ku/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    166,
    "Santander Cycles - Swansea",
    "GB",
    "Swansea University, GB",
    "nextbike_uu",
    "https://www.santandercycles.co.uk/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_uu/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_uu/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    167,
    "University of Surrey",
    "GB",
    "University of Surrey, GB",
    "nextbike_su",
    "https://www.nextbike.co.uk/en/university-of-surrey/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_su/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_su/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    168,
    "Grad Drniš (Croatia)",
    "HR",
    "Drniš, HR",
    "nextbike_gd",
    "https://www.nextbike.hr/hr/drnis/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_gd/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_gd/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    169,
    "Grad Gospić (Croatia)",
    "HR",
    "Gospić, HR",
    "nextbike_gs",
    "https://www.nextbike.hr/hr/gospic/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_gs/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_gs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    170,
    "Grad Ivanić-Grad (Croatia)",
    "HR",
    "Ivanic Grad, HR",
    "nextbike_ig",
    "https://www.nextbike.hr/hr/ivanicgrad/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ig/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ig/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    171,
    "Grad Karlovac (Croatia)",
    "HR",
    "Karlovac, HR",
    "nextbike_kc",
    "https://www.nextbike.hr/hr/karlovac/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_kc/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_kc/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    172,
    "Grad Makarska (Croatia)",
    "HR",
    "Makarska, HR",
    "nextbike_ma",
    "https://www.nextbike.hr/hr/makarska/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ma/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ma/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    173,
    "Grad Metković (Croatia)",
    "HR",
    "Metković, HR",
    "nextbike_cm",
    "https://www.nextbike.hr/hr/metkovic/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_cm/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_cm/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    174,
    "Grad Šibenik (Croatia)",
    "HR",
    "Šibenik, HR",
    "nextbike_bc",
    "https://www.nextbike.hr/hr/sibenik/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bc/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bc/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    175,
    "Grad Sisak (Croatia)",
    "HR",
    "Sisak, HR",
    "nextbike_cs",
    "https://www.nextbike.hr/hr/sisak/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_cs/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_cs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    176,
    "Grad Slavonski Brod (Croatia)",
    "HR",
    "Slavonski Brod, HR",
    "nextbike_sb",
    "https://www.nextbike.hr/hr/slavonskibrod/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_sb/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_sb/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    177,
    "Grad Split (Croatia)",
    "HR",
    "Split , HR",
    "nextbike_gt",
    "https://www.nextbike.hr/hr/split/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_gt/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_gt/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    178,
    "Grad Velika Gorica (Croatia)",
    "HR",
    "Velika Gorica, HR",
    "nextbike_cg",
    "https://www.nextbike.hr/hr/velikagorica/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_cg/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_cg/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    179,
    "Grad Zadar (Croatia)",
    "HR",
    "Zadar, HR",
    "nextbike_zd",
    "https://www.nextbike.hr/hr/zadar/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_zd/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_zd/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    180,
    "Jastrebarsko (Croatia)",
    "HR",
    "Jastrebarsko, HR",
    "nextbike_cj",
    "https://www.nextbike.hr/hr/jastrebarsko/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_cj/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_cj/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    181,
    "nextbike Croatia",
    "HR",
    "Zagreb, HR",
    "nextbike_hr",
    "https://www.nextbike.hr/hr/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_hr/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_hr/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    182,
    "Općina Brinje (Croatia)",
    "HR",
    "Brinje, HR",
    "nextbike_br",
    "https://www.nextbike.hr/hr/brinje/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_br/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_br/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    183,
    "Općina Dugopolje (Croatia)",
    "HR",
    "Dugopolje, HR",
    "nextbike_od",
    "https://www.nextbike.hr/hr/dugopolje/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_od/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_od/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    184,
    "Općina Pitomača (Croatia)",
    "HR",
    "Pitomača, HR",
    "nextbike_se",
    "https://www.nextbike.hr/hr/pitomaca/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_se/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_se/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    185,
    "Donkey Republic Budapest",
    "HU",
    "Budapest, HU",
    "donkey_budapest",
    "https://www.donkey.bike/cities/bike-rental-budapest/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_budapest/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_budapest/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    186,
    "Lime Tel Aviv",
    "IL",
    "Tel Aviv, IL",
    "lime_tel_aviv",
    "https://li.me/",
    "https://data.lime.bike/api/partners/v1/gbfs/tel_aviv/station_information",
    "https://data.lime.bike/api/partners/v1/gbfs/tel_aviv/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    187,
    "Chartered Bike (Bhopal - India)",
    "IN",
    "Bhopal, IN",
    "nextbike_bi",
    "http://www.charteredbike.in/en/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bi/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bi/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    188,
    "Chartered Bike (Ranchi - India)",
    "IN",
    "Ranchi, IN",
    "nextbike_ir",
    "http://www.charteredbike.in/en/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ir/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ir/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    189,
    "Donkey Republic Reykjavik",
    "IS",
    "Reykjavik",
    "donkey_reykjavik",
    "https://www.donkey.bike/cities/bike-rental-reykjavik/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_reykjavik/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_reykjavik/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    190,
    "Lime Rome",
    "IT",
    "Rome, IT",
    "lime_rome",
    "https://li.me",
    "https://data.lime.bike/api/partners/v1/gbfs/rome/station_information",
    "https://data.lime.bike/api/partners/v1/gbfs/rome/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    191,
    "bike4all",
    "LB",
    "Byblos, LB",
    "nextbike_bl",
    "https://www.bikeforall-lb.com/en/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bl/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_bl/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    192,
    "nextbike LV",
    "LV",
    "Latvia, LV",
    "nextbike_lv",
    "https://www.nextbike.lv/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_lv/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_lv/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    193,
    "MonaBike",
    "MC",
    "Monaco, MC",
    "mona_bike",
    "https://monabike.mc/",
    "https://monaco.publicbikesystem.net/ube/gbfs/v1/en/station_information",
    "https://monaco.publicbikesystem.net/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    194,
    "nextbike Malta",
    "MT",
    "Malta, MT",
    "nextbike_mt",
    "https://www.nextbike.com.mt/en/malta/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_mt/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_mt/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    195,
    "Mibici Guadalajara",
    "MX",
    "Guadalajara, MX",
    "mibici_guadalajara",
    "https://www.mibici.net/en/",
    "https://guadalajara-mx.publicbikesystem.net/ube/gbfs/v1/en/station_information",
    "https://guadalajara-mx.publicbikesystem.net/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    196,
    "YOY - San Luis Potosi",
    "MX",
    "San Luis Potosi, MX",
    "nextbike_yp",
    "https://www.yoymobility.com/es/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_yp/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_yp/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    197,
    "Cykl",
    "NL",
    "Wageningen, NL",
    "CKL",
    "https://www.cykl.nl/",
    "https://www.cykl.nl/gbfs/en/station_information.json",
    "https://www.cykl.nl/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    198,
    "nextbike Dordrecht",
    "NL",
    "Dordrecht, NL",
    "nextbike_nd",
    "https://www.nextbike.nl/nl/dordrecht/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_nd/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_nd/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    199,
    "nextbike New Zealand",
    "NZ",
    "New Zealand, NZ",
    "nextbike_nz",
    "https://www.nextbike.co.nz/en/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_nz/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_nz/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    200,
    "Bike_S SRM Poland",
    "PL",
    "Szczecin, PL",
    "nextbike_sp",
    "https://bikes-srm.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_sp/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_sp/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    201,
    "GRM Grodzisk Poland",
    "PL",
    "Grodzisk Mazowiecki, PL",
    "nextbike_gp",
    "https://www.rowery.grodzisk.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_gp/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_gp/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    202,
    "Kajteroz - Chorzowski Rower Miejski Poland",
    "PL",
    "Chorzów, PL",
    "nextbike_pv",
    "https://kajteroz.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pv/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pv/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    203,
    "Kołobrzeski Rower Miejski Poland",
    "PL",
    "Kołobrzeg, PL",
    "nextbike_kr",
    "https://kolobrzeskirower.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_kr/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_kr/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    204,
    "Koło Marek Poland",
    "PL",
    "Marki, PL",
    "nextbike_mk",
    "https://kolomarek.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_mk/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_mk/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    205,
    "Komornicki System Rowerowy Poland",
    "PL",
    "Komorniki, PL",
    "nextbike_pa",
    "https://komornickirower.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pa/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pa/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    206,
    "Koniński Rower Miejski Poland",
    "PL",
    "Konin, PL",
    "nextbike_pn",
    "https://koninskirower.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pn/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pn/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    207,
    "LRM Lublin Poland",
    "PL",
    "Lublin, PL",
    "nextbike_ln",
    "https://www.lubelskirower.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ln/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ln/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    208,
    "Luboński Rower Miejski Poland",
    "PL",
    "Luboń, PL",
    "nextbike_pq",
    "https://www.rowerlubon.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pq/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pq/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    209,
    "Oleski Rower Miejski Poland",
    "PL",
    "Olesno, PL",
    "nextbike_pf",
    "https://oleskirower.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pf/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pf/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    210,
    "Piaseczyński Rower Miejski Poland",
    "PL",
    "Piaseczno, PL",
    "nextbike_pi",
    "https://www.piaseczynskirower.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pi/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pi/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    211,
    "PRM Poznan Poland",
    "PL",
    "Poznan, PL",
    "nextbike_pb",
    "https://poznanskirower.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pb/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pb/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    212,
    "Rower Miejski Szamotuły Poland (RMS) Poland",
    "PL",
    "Szamotuły, PL",
    "nextbike_rm",
    "https://szamotuly.bike/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_rm/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_rm/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    213,
    "Rower Miejski w Ostrowie Wielkopolskim Poland",
    "PL",
    "Ostrów Wielkopolski, PL",
    "nextbike_po",
    "https://ostrowskirowermiejski.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_po/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_po/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    214,
    "Rowerowe Łódzkie Poland (RL)",
    "PL",
    "Lodzkie, PL",
    "nextbike_pw",
    "https://www.rowerowelodzkie.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pw/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pw/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    215,
    "System Legnicki Rower Miejski (SLRM) Poland",
    "PL",
    "Legnica, PL",
    "nextbike_mp",
    "https://rower.legnica.eu/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_mp/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_mp/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    216,
    "System Roweru Gminnego Poland",
    "PL",
    "Pielgrzymka, PL",
    "nextbike_pg",
    "https://rowery.pielgrzymka.biz/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pg/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pg/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    217,
    "Tarnowski Rower Miejski Poland",
    "PL",
    "Tarnów, PL",
    "nextbike_tn",
    "https://rower.tarnow.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_tn/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_tn/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    218,
    "VETURILO Poland",
    "PL",
    "Veturilo, PL",
    "nextbike_vp",
    "https://www.veturilo.waw.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_vp/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_vp/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    219,
    "WRM nextbike Poland",
    "PL",
    "Wrocław, PL",
    "nextbike_pl",
    "https://www.wroclawskirower.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pl/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pl/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    220,
    "Zielonogórski Rower Miejski Poland",
    "PL",
    "Zielona Góra, PL",
    "nextbike_pm",
    "https://zielonogorskirowermiejski.pl/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pm/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pm/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    221,
    "Drobeta Velopark",
    "RO",
    "Drobeta, RO",
    "nextbike_rd",
    "https://www.nextbike.ro/ro/drobeta/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_rd/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_rd/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    222,
    "nextbike Romania",
    "RO",
    "Focșani, RO",
    "nextbike_nw",
    "https://nextbike.ro/en/foc%C8%99ani/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_nw/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_nw/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    223,
    "Saturn",
    "RO",
    "Saturn, RO",
    "nextbike_rs",
    "https://www.nextbike.ro/ro/saturn/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_rs/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_rs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    224,
    "iBike ( Saudi Arabia )",
    "SA",
    "King Abdullah Economic City, SA",
    "nextbike_sa",
    "https://ibike.kaec.net/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_sa/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_sa/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    225,
    "Just Eat Cycles",
    "SC",
    "Edinburgh, SC",
    "edinburgh-city-bikes",
    "https://edinburghcyclehire.com/",
    "http://gbfs.urbansharing.com/edinburghcyclehire.com/station_information.json",
    "http://gbfs.urbansharing.com/edinburghcyclehire.com/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    226,
    "Donkey Republic Båstad",
    "SE",
    "Båstad, SE",
    "donkey_baastad",
    "https://www.donkey.bike/cities/bike-rental-bastad/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_baastad/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_baastad/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    227,
    "Donkey Republic Malmö",
    "SE",
    "Malmö, SE",
    "donkey_malmoe",
    "https://www.donkey.bike/cities/bike-rental-malmo/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_malmoe/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_malmoe/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    228,
    "Donkey Republic Ystad",
    "SE",
    "Ystad, SE",
    "donkey_ystad",
    "https://www.donkey.bike/cities/bike-rental-ystad/",
    "https://stables.donkey.bike/api/public/gbfs/donkey_ystad/en/station_information.json",
    "https://stables.donkey.bike/api/public/gbfs/donkey_ystad/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    229,
    "Styr & Ställ (Sweden, Göteborg)",
    "SE",
    "Göteborg, SE",
    "nextbike_zg",
    "https://styrochstall.se/sv/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_zg/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_zg/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    230,
    "Nomago Bikes - GO2GO",
    "SI",
    "Nova Gorica, SI",
    "nextbike_ce",
    "https://bikes.nomago.si/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ce/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ce/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    231,
    "NomagoBikes (Slovenia)",
    "SI",
    "Slovenia, SI",
    "nextbike_cn",
    "https://bikes.nomago.si/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_cn/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_cn/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    232,
    "Arriva Nitra Slovakia",
    "SK",
    "Nitra, SK",
    "nextbike_as",
    "https://arriva.bike/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_as/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_as/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    233,
    "BikeKIA",
    "SK",
    "Žilina, SK",
    "nextbike_ak",
    "https://bikekia.sk/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ak/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_ak/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    234,
    "nextbike (Ukraine)",
    "UA",
    "Ukraine, UA",
    "nextbike_nu",
    "https://www.nextbike.ua/uk/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_nu/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_nu/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    235,
    "nextbike Vinnitsa (Ukraine)",
    "UA",
    "Vinnytsia, UA",
    "nextbike_uv",
    "https://www.nextbike.ua/uk/Vinnytsia/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_uv/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_uv/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    236,
    "Austin B-cycle",
    "US",
    "Austin, TX",
    "bcycle_austin",
    "http://austinbcycle.com",
    "https://gbfs.bcycle.com/bcycle_austin/station_information.json",
    "https://gbfs.bcycle.com/bcycle_austin/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    237,
    "Aventura BCycle",
    "US",
    "Aventura, FL",
    "bcycle_aventura",
    "https://aventura.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_aventura/station_information.json",
    "https://gbfs.bcycle.com/bcycle_aventura/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    238,
    "Bay Wheels",
    "US",
    "San Francisco Bay Area, CA",
    "BA",
    "https://www.baywheels.com/",
    "https://gbfs.baywheels.com/gbfs/en/station_information.json",
    "https://gbfs.baywheels.com/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    239,
    "Bike Chattanooga",
    "US",
    "Chattanooga, TN",
    "bike_chattanooga",
    "http://www.bikechattanooga.com/",
    "https://chattanooga-us.publicbikesystem.net/customer/ube/gbfs/v1/en/station_information",
    "https://chattanooga-us.publicbikesystem.net/customer/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    240,
    "BikeLNK",
    "US",
    "Lincoln, NE",
    "bcycle_bikelnk",
    "https://bikelnk.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_bikelnk/station_information.json",
    "https://gbfs.bcycle.com/bcycle_bikelnk/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    241,
    "Bikeshare Kona",
    "US",
    "Kona, HI",
    "bikeshare_kona",
    "https://hawaiiislandbikeshare.org/",
    "https://kona.publicbikesystem.net/customer/ube/gbfs/v1/en/station_information",
    "https://kona.publicbikesystem.net/customer/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    242,
    "BIKETOWN",
    "US",
    "Portland, OR",
    "biketown_pdx",
    "https://www.biketownpdx.com/",
    "https://gbfs.biketownpdx.com/gbfs/en/station_information.json",
    "https://gbfs.biketownpdx.com/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    243,
    "Biki",
    "US",
    "Honolulu, HI",
    "go_biki",
    "https://gobiki.org/",
    "https://hon.publicbikesystem.net/customer/ube/gbfs/v1/en/station_information",
    "https://hon.publicbikesystem.net/customer/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    244,
    "Blue Bikes",
    "US",
    "Boston, MA",
    "bluebikes",
    "https://www.bluebikes.com/",
    "https://gbfs.bluebikes.com/gbfs/en/station_information.json",
    "https://gbfs.bluebikes.com/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    245,
    "Broward B-cycle",
    "US",
    "Fort Lauderdale, FL",
    "bcycle_broward",
    "https://broward.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_broward/station_information.json",
    "https://gbfs.bcycle.com/bcycle_broward/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    246,
    "Bublr Bikes",
    "US",
    "Milwaukee, WI",
    "bcycle_bublr",
    "http://bublrbikes.com",
    "https://gbfs.bcycle.com/bcycle_bublr/station_information.json",
    "https://gbfs.bcycle.com/bcycle_bublr/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    247,
    "Capital Bike Share",
    "US",
    "Washington, DC",
    "cabi",
    "http://www.capitalbikeshare.com",
    "https://gbfs.capitalbikeshare.com/gbfs/en/station_information.json",
    "https://gbfs.capitalbikeshare.com/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    248,
    "Charlotte B-cycle",
    "US",
    "Charlotte, NC",
    "bcycle_charlotte",
    "https://charlotte.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_charlotte/station_information.json",
    "https://gbfs.bcycle.com/bcycle_charlotte/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    249,
    "Cincy Red Bike",
    "US",
    "Cincinnati, OH",
    "bcycle_cincyredbike",
    "http://www.cincyredbike.org",
    "https://gbfs.bcycle.com/bcycle_cincyredbike/station_information.json",
    "https://gbfs.bcycle.com/bcycle_cincyredbike/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    250,
    "Citi Bike",
    "US",
    "NYC, NY",
    "NYC",
    "https://www.citibikenyc.com",
    "https://gbfs.citibikenyc.com/gbfs/en/station_information.json",
    "https://gbfs.citibikenyc.com/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    251,
    "Clarksville B-cycle",
    "US",
    "Clarksville, TN",
    "bcycle_clarksville",
    "https://clarksville.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_clarksville/station_information.json",
    "https://gbfs.bcycle.com/bcycle_clarksville/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    252,
    "Clemson BikeShare",
    "US",
    "Clemson, SC",
    "bcycle_clemson",
    "https://clemson.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_clemson/station_information.json",
    "https://gbfs.bcycle.com/bcycle_clemson/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    253,
    "CLEVR Mobility",
    "US",
    "Oakland, CA",
    "daecbe87-a9f2-4a5a-b5df-8e3e14180513",
    "https://www.clevrmobility.com/",
    "https://portal.clevrmobility.com/api/gbfs/oakland/en/station_information/",
    "https://portal.clevrmobility.com/api/gbfs/oakland/en/station_status/"
  ),
  BIKESHARE_PROGRAM.new(
    254,
    "Coast Bike Share",
    "US",
    "St. Petersburg, FL",
    "coast_bike_share",
    "http://coastbikeshare.com/",
    "http://coast.socialbicycles.com/opendata/station_information.json",
    "http://coast.socialbicycles.com/opendata/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    255,
    "CoGo",
    "US",
    "Columbus, OH",
    "cogo",
    "http://www.cogobikeshare.com/",
    "https://gbfs.cogobikeshare.com/gbfs/en/station_information.json",
    "https://gbfs.cogobikeshare.com/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    256,
    "Des Moines B-cycle",
    "US",
    "Des Moines, IA",
    "bcycle_desmoines",
    "https://desmoines.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_desmoines/station_information.json",
    "https://gbfs.bcycle.com/bcycle_desmoines/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    257,
    "Divvy",
    "US",
    "Chicago, IL",
    "divvy",
    "http://www.divvybikes.com/",
    "https://gbfs.divvybikes.com/gbfs/en/station_information.json",
    "https://gbfs.divvybikes.com/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    258,
    "El Paso B-cycle",
    "US",
    "El Paso, TX",
    "bcycle_elpaso",
    "https://elpaso.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_elpaso/station_information.json",
    "https://gbfs.bcycle.com/bcycle_elpaso/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    259,
    "Explore Bike Share",
    "US",
    "Memphis, TN",
    "bcycle_memphis",
    "https://explorebikeshare.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_memphis/station_information.json",
    "https://gbfs.bcycle.com/bcycle_memphis/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    260,
    "Fort Worth Bike Sharing",
    "US",
    "Fort Worth, TX",
    "bcycle_fortworth",
    "https://fortworth.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_fortworth/station_information.json",
    "https://gbfs.bcycle.com/bcycle_fortworth/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    261,
    "GREENbike",
    "US",
    "Salt Lake City, UT",
    "bcycle_greenbikeslc",
    "https://greenbikeslc.org",
    "https://gbfs.bcycle.com/bcycle_greenbikeslc/station_information.json",
    "https://gbfs.bcycle.com/bcycle_greenbikeslc/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    262,
    "Greenville B-cycle",
    "US",
    "Greenville, SC",
    "bcycle_greenville",
    "https://greenville.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_greenville/station_information.json",
    "https://gbfs.bcycle.com/bcycle_greenville/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    263,
    "Healthy Ride Pittsburgh",
    "US",
    "Pittsburgh, PA",
    "nextbike_pp",
    "https://healthyridepgh.com/",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pp/en/station_information.json",
    "https://gbfs.nextbike.net/maps/gbfs/v2/nextbike_pp/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    264,
    "Heartland B-cycle",
    "US",
    "Omaha, NE",
    "bcycle_heartland",
    "https://heartland.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_heartland/station_information.json",
    "https://gbfs.bcycle.com/bcycle_heartland/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    265,
    "HOPR Arizona",
    "US",
    "Pheonix, AZ",
    "17",
    "https://gohopr.com/",
    "https://gbfs.hopr.city/api/gbfs/17/station_information",
    "https://gbfs.hopr.city/api/gbfs/17/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    266,
    "HOPR Atlanta",
    "US",
    "Atlanta, GA",
    "20",
    "https://gohopr.com/",
    "https://gbfs.hopr.city/api/gbfs/20/station_information",
    "https://gbfs.hopr.city/api/gbfs/20/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    267,
    "HOPR Freemont",
    "US",
    "Freemont, CA",
    "16",
    "https://gohopr.com/",
    "https://gbfs.hopr.city/api/gbfs/16/station_information",
    "https://gbfs.hopr.city/api/gbfs/16/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    268,
    "HOPR Los Angeles",
    "US",
    "Los Angeles, CA",
    "10",
    "https://gohopr.com/la/",
    "https://gbfs.hopr.city/api/gbfs/10/station_information",
    "https://gbfs.hopr.city/api/gbfs/10/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    269,
    "HOPR Louisville",
    "US",
    "Louisville, KY",
    "19",
    "https://gohopr.com/",
    "https://gbfs.hopr.city/api/gbfs/19/station_information",
    "https://gbfs.hopr.city/api/gbfs/19/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    270,
    "HOPR Margaritaville",
    "US",
    "Kissimmee, FL",
    "21",
    "https://gohopr.com/",
    "https://gbfs.hopr.city/api/gbfs/21/station_information",
    "https://gbfs.hopr.city/api/gbfs/21/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    271,
    "HOPR Miami",
    "US",
    "Miami, FL",
    "11",
    "https://gohopr.com/",
    "https://gbfs.hopr.city/api/gbfs/11/station_information",
    "https://gbfs.hopr.city/api/gbfs/11/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    272,
    "HOPR Orlando",
    "US",
    "Orlando, FL",
    "12",
    "https://gohopr.com/orlando/",
    "https://gbfs.hopr.city/api/gbfs/12/station_information",
    "https://gbfs.hopr.city/api/gbfs/12/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    273,
    "HOPR Rochester-Genesee",
    "US",
    "Rochester, NY",
    "32",
    "https://gohopr.com/",
    "https://gbfs.hopr.city/api/gbfs/32/station_information",
    "https://gbfs.hopr.city/api/gbfs/32/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    274,
    "HOPR Tampa",
    "US",
    "Tampa, FL",
    "8",
    "https://gohopr.com/tampabay/",
    "https://gbfs.hopr.city/api/gbfs/8/station_information",
    "https://gbfs.hopr.city/api/gbfs/8/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    275,
    "Houston B-cycle",
    "US",
    "Houston, TX",
    "bcycle_houston",
    "https://houston.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_houston/station_information.json",
    "https://gbfs.bcycle.com/bcycle_houston/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    276,
    "Indego",
    "US",
    "Philadelphia, PA",
    "bcycle_indego",
    "https://www.rideindego.com",
    "https://gbfs.bcycle.com/bcycle_indego/station_information.json",
    "https://gbfs.bcycle.com/bcycle_indego/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    277,
    "Indy - Pacers Bikeshare",
    "US",
    "Indianapolis, IN",
    "bcycle_pacersbikeshare",
    "https://www.pacersbikeshare.org",
    "https://gbfs.bcycle.com/bcycle_pacersbikeshare/station_information.json",
    "https://gbfs.bcycle.com/bcycle_pacersbikeshare/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    278,
    "Jackson County",
    "US",
    "Jackson, MI",
    "bcycle_jacksoncounty",
    "https://jacksoncounty.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_jacksoncounty/station_information.json",
    "https://gbfs.bcycle.com/bcycle_jacksoncounty/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    279,
    "Lime Arlington",
    "US",
    "Arlington, VA",
    "lime_arlington",
    "https://www.li.me/",
    "https://data.lime.bike/api/partners/v1/gbfs/arlington/station_information",
    "https://data.lime.bike/api/partners/v1/gbfs/arlington/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    280,
    "Lime Baltimore",
    "US",
    "Baltimore, MD",
    "lime_baltimore",
    "https://www.li.me/",
    "https://data.lime.bike/api/partners/v1/gbfs/baltimore/station_information",
    "https://data.lime.bike/api/partners/v1/gbfs/baltimore/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    281,
    "Lime Chicago",
    "US",
    "Chicago, IL",
    "lime_chicago",
    "https://www.li.me/",
    "https://data.lime.bike/api/partners/v1/gbfs/chicago/station_information",
    "https://data.lime.bike/api/partners/v1/gbfs/chicago/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    282,
    "Louvelo",
    "US",
    "Louisville, KY",
    "Louvelo",
    "https://louvelo.com/",
    "https://louisville-us.publicbikesystem.net/customer/ube/gbfs/v1/en/station_information",
    "https://louisville-us.publicbikesystem.net/customer/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    283,
    "Lyft",
    "US",
    "Washington, DC",
    "lyft_dca",
    "https://www.lyft.com/scooters/washington-dc",
    "https://s3.amazonaws.com/lyft-lastmile-production-iad/lbs/dca/station_information.json",
    "https://s3.amazonaws.com/lyft-lastmile-production-iad/lbs/dca/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    284,
    "Lyft Scooters Chicago",
    "US",
    "Chicago, IL",
    "chicago",
    "https://www.divvybikes.com",
    "https://s3.amazonaws.com/lyft-lastmile-production-iad/lbs/chi/station_information.json",
    "https://s3.amazonaws.com/lyft-lastmile-production-iad/lbs/chi/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    285,
    "Lyft Scooters Los Angeles",
    "US",
    "Los Angeles, CA",
    "lyft_lax",
    "https://www.lyft.com/",
    "https://s3.amazonaws.com/lyft-lastmile-production-iad/lbs/lax/station_information.json",
    "https://s3.amazonaws.com/lyft-lastmile-production-iad/lbs/lax/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    286,
    "Lyft Scooters Minneapolis",
    "US",
    "Minneapolis, MN",
    "niceridemn",
    "https://www.lyft.com/",
    "https://s3.amazonaws.com/lyft-lastmile-production-iad/lbs/msp/station_information.json",
    "https://s3.amazonaws.com/lyft-lastmile-production-iad/lbs/msp/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    287,
    "Madison B-cycle",
    "US",
    "Madison, WI",
    "bcycle_madison",
    "https://madison.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_madison/station_information.json",
    "https://gbfs.bcycle.com/bcycle_madison/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    288,
    "McAllen B-cycle",
    "US",
    "McAllen, TX",
    "bcycle_mcallen",
    "https://mcallen.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_mcallen/station_information.json",
    "https://gbfs.bcycle.com/bcycle_mcallen/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    289,
    "Metro Bike Share",
    "US",
    "Los Angeles, CA",
    "bcycle_lametro",
    "https://bikeshare.metro.net",
    "https://gbfs.bcycle.com/bcycle_lametro/station_information.json",
    "https://gbfs.bcycle.com/bcycle_lametro/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    290,
    "Mogo Detroit",
    "US",
    "Detroit, MI",
    "mogo",
    "https://mogodetroit.org/",
    "https://detroit-us.publicbikesystem.net/customer/ube/gbfs/v1/en/station_information",
    "https://detroit-us.publicbikesystem.net/customer/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    291,
    "Nice Ride Minnesota",
    "US",
    "Minneapolis, MN",
    "niceridemn",
    "https://www.niceridemn.com",
    "https://gbfs.niceridemn.com/gbfs/en/station_information.json",
    "https://gbfs.niceridemn.com/gbfs/en/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    292,
    "PeaceHealth Rides",
    "US",
    "Eugene, OR",
    "peacehealth_rides",
    "https://www.peacehealthrides.com/",
    "http://peacehealthrides.com/opendata/station_information.json",
    "http://peacehealthrides.com/opendata/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    293,
    "Rad Sharing Fleet",
    "US",
    "Seattle, WA",
    "33",
    "https://gohopr.com/",
    "https://gbfs.hopr.city/api/gbfs/33/station_information",
    "https://gbfs.hopr.city/api/gbfs/33/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    294,
    "Reddy Bikeshare",
    "US",
    "Buffalo, NY",
    "reddy_bikeshare",
    "http://reddybikeshare.socialbicycles.com",
    "http://reddybikeshare.socialbicycles.com/opendata/station_information.json",
    "http://reddybikeshare.socialbicycles.com/opendata/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    295,
    "Relay Bike Share",
    "US",
    "Atlanta, GA",
    "relay_bike_share",
    "http://relaybikeshare.com/",
    "http://relaybikeshare.socialbicycles.com/opendata/station_information.json",
    "http://relaybikeshare.socialbicycles.com/opendata/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    296,
    "RTC Bike Share",
    "US",
    "Las Vegas, NV",
    "bcycle_rtcbikeshare",
    "https://rtcbikeshare.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_rtcbikeshare/station_information.json",
    "https://gbfs.bcycle.com/bcycle_rtcbikeshare/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    297,
    "San Antonio B-cycle",
    "US",
    "San Antonio, TX",
    "bcycle_sanantonio",
    "https://sanantonio.bcycle.com/",
    "https://gbfs.bcycle.com/bcycle_sanantonio/station_information.json",
    "https://gbfs.bcycle.com/bcycle_sanantonio/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    298,
    "Santa Barbara BCycle",
    "US",
    "Santa Barbara, CA",
    "bcycle_santabarbara",
    "https://santabarbara.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_santabarbara/station_information.json",
    "https://gbfs.bcycle.com/bcycle_santabarbara/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    299,
    "SBU Wolf Ride Bike Share",
    "US",
    "Stony Brook, NY",
    "sbu",
    "https://www.stonybrook.edu/commcms/sustainability/transportation/_Wolf_Ride_Bike_Share/",
    "https://stonybrook.publicbikesystem.net/customer/ube/gbfs/v1/en/station_information",
    "https://stonybrook.publicbikesystem.net/customer/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    300,
    "Spartanburg BCycle",
    "US",
    "Spartanburg, SC",
    "bcycle_spartanburg",
    "https://spartanburg.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_spartanburg/station_information.json",
    "https://gbfs.bcycle.com/bcycle_spartanburg/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    301,
    "START Bike",
    "US",
    "Jackson, WY",
    "bcycle_startbike",
    "https://startbike.bcycle.com",
    "https://gbfs.bcycle.com/bcycle_startbike/station_information.json",
    "https://gbfs.bcycle.com/bcycle_startbike/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    302,
    "Tugo",
    "US",
    "Tucson, AZ",
    "tugo",
    "https://tugobikeshare.com/",
    "https://tucson-us.publicbikesystem.net/ube/gbfs/v1/en/station_information",
    "https://tucson-us.publicbikesystem.net/ube/gbfs/v1/en/station_status"
  ),
  BIKESHARE_PROGRAM.new(
    303,
    "Valentine Bike Share",
    "US",
    "Valentine, NE",
    "bcycle_valentine",
    "https://heartlandbikeshare.org",
    "https://gbfs.bcycle.com/bcycle_valentine/station_information.json",
    "https://gbfs.bcycle.com/bcycle_valentine/station_status.json"
  ),
  BIKESHARE_PROGRAM.new(
    304,
    "We-cycle",
    "US",
    "Aspen, CO",
    "we_cycle",
    "https://www.we-cycle.org/",
    "https://aspen-us.publicbikesystem.net/customer/ube/gbfs/v1/en/station_information",
    "https://aspen-us.publicbikesystem.net/customer/ube/gbfs/v1/en/station_status"
  )
]
