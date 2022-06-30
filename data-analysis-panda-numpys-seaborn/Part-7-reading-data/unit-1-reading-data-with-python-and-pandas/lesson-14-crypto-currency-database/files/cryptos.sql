PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations VALUES(1,'contenttypes','0001_initial','2019-11-14 13:02:12.462536');
INSERT INTO django_migrations VALUES(2,'auth','0001_initial','2019-11-14 13:02:12.531262');
INSERT INTO django_migrations VALUES(3,'admin','0001_initial','2019-11-14 13:02:12.563584');
INSERT INTO django_migrations VALUES(4,'admin','0002_logentry_remove_auto_add','2019-11-14 13:02:12.615214');
INSERT INTO django_migrations VALUES(5,'admin','0003_logentry_add_action_flag_choices','2019-11-14 13:02:12.661766');
INSERT INTO django_migrations VALUES(6,'contenttypes','0002_remove_content_type_name','2019-11-14 13:02:12.739565');
INSERT INTO django_migrations VALUES(7,'auth','0002_alter_permission_name_max_length','2019-11-14 13:02:12.762174');
INSERT INTO django_migrations VALUES(8,'auth','0003_alter_user_email_max_length','2019-11-14 13:02:12.815454');
INSERT INTO django_migrations VALUES(9,'auth','0004_alter_user_username_opts','2019-11-14 13:02:12.848559');
INSERT INTO django_migrations VALUES(10,'auth','0005_alter_user_last_login_null','2019-11-14 13:02:12.895415');
INSERT INTO django_migrations VALUES(11,'auth','0006_require_contenttypes_0002','2019-11-14 13:02:12.910203');
INSERT INTO django_migrations VALUES(12,'auth','0007_alter_validators_add_error_messages','2019-11-14 13:02:12.949161');
INSERT INTO django_migrations VALUES(13,'auth','0008_alter_user_username_max_length','2019-11-14 13:02:12.984443');
INSERT INTO django_migrations VALUES(14,'auth','0009_alter_user_last_name_max_length','2019-11-14 13:02:13.021366');
INSERT INTO django_migrations VALUES(15,'auth','0010_alter_group_name_max_length','2019-11-14 13:02:13.068418');
INSERT INTO django_migrations VALUES(16,'auth','0011_update_proxy_permissions','2019-11-14 13:02:13.093113');
INSERT INTO django_migrations VALUES(17,'cryptocoins','0001_initial','2019-11-14 13:02:13.110334');
INSERT INTO django_migrations VALUES(18,'cryptocoins','0002_auto_20181227_1931','2019-11-14 13:02:13.138270');
INSERT INTO django_migrations VALUES(19,'cryptocoins','0003_auto_20181228_1426','2019-11-14 13:02:13.163701');
INSERT INTO django_migrations VALUES(20,'sessions','0001_initial','2019-11-14 13:02:13.178247');
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "action_time" datetime NOT NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0));
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type VALUES(1,'admin','logentry');
INSERT INTO django_content_type VALUES(2,'auth','permission');
INSERT INTO django_content_type VALUES(3,'auth','group');
INSERT INTO django_content_type VALUES(4,'auth','user');
INSERT INTO django_content_type VALUES(5,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(6,'sessions','session');
INSERT INTO django_content_type VALUES(7,'cryptocoins','cryptocurrency');
INSERT INTO django_content_type VALUES(8,'cryptocoins','exchange');
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(4,1,'view_logentry','Can view log entry');
INSERT INTO auth_permission VALUES(5,2,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(6,2,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(7,2,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(8,2,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(9,3,'add_group','Can add group');
INSERT INTO auth_permission VALUES(10,3,'change_group','Can change group');
INSERT INTO auth_permission VALUES(11,3,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(12,3,'view_group','Can view group');
INSERT INTO auth_permission VALUES(13,4,'add_user','Can add user');
INSERT INTO auth_permission VALUES(14,4,'change_user','Can change user');
INSERT INTO auth_permission VALUES(15,4,'delete_user','Can delete user');
INSERT INTO auth_permission VALUES(16,4,'view_user','Can view user');
INSERT INTO auth_permission VALUES(17,5,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(18,5,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(19,5,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(20,5,'view_contenttype','Can view content type');
INSERT INTO auth_permission VALUES(21,6,'add_session','Can add session');
INSERT INTO auth_permission VALUES(22,6,'change_session','Can change session');
INSERT INTO auth_permission VALUES(23,6,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(24,6,'view_session','Can view session');
INSERT INTO auth_permission VALUES(25,7,'add_cryptocurrency','Can add Cryptocurrency');
INSERT INTO auth_permission VALUES(26,7,'change_cryptocurrency','Can change Cryptocurrency');
INSERT INTO auth_permission VALUES(27,7,'delete_cryptocurrency','Can delete Cryptocurrency');
INSERT INTO auth_permission VALUES(28,7,'view_cryptocurrency','Can view Cryptocurrency');
INSERT INTO auth_permission VALUES(29,8,'add_exchange','Can add exchange');
INSERT INTO auth_permission VALUES(30,8,'change_exchange','Can change exchange');
INSERT INTO auth_permission VALUES(31,8,'delete_exchange','Can delete exchange');
INSERT INTO auth_permission VALUES(32,8,'view_exchange','Can view exchange');
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "first_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "last_name" varchar(150) NOT NULL);
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
CREATE TABLE IF NOT EXISTS "cryptocoins_exchange" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL, "url" varchar(1200) NOT NULL);
INSERT INTO cryptocoins_exchange VALUES(1,'Bitstamp','https://www.bitstamp.net');
INSERT INTO cryptocoins_exchange VALUES(2,'Poloniex','https://poloniex.com');
INSERT INTO cryptocoins_exchange VALUES(3,'Binance','https://www.binance.com/');
INSERT INTO cryptocoins_exchange VALUES(4,'OKEx','https://www.okex.com');
CREATE TABLE IF NOT EXISTS "cryptocoins_cryptocurrency" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL, "slug" varchar(100) NOT NULL, "symbol" varchar(10) NOT NULL, "rank" integer NOT NULL, "price_usd" decimal NOT NULL, "price_btc" decimal NOT NULL, "volume_usd_24h" decimal NOT NULL, "market_cap_usd" decimal NOT NULL, "available_supply" decimal NOT NULL, "total_supply" decimal NOT NULL, "max_supply" decimal NULL, "percent_change_1h" decimal NOT NULL, "percent_change_24h" decimal NOT NULL, "percent_change_7d" decimal NOT NULL, "exchange_id" integer NOT NULL REFERENCES "cryptocoins_exchange" ("id") DEFERRABLE INITIALLY DEFERRED, "last_updated" datetime NOT NULL);
INSERT INTO cryptocoins_cryptocurrency VALUES(1,'Bitcoin','bitcoin','BTC',1,8707.3700000000008002,1,18743290913.099998474,157139896329,18046762,18046762,21000000,-0.11999999999999999555,-1.080000000000000071,-5.9100000000000001421,1,'2019-11-14 13:02:23.293956');
INSERT INTO cryptocoins_cryptocurrency VALUES(2,'Ethereum','ethereum','ETH',2,186.49999999999999999,0.021432699999999998974,7703153953.0900001526,20244944406,108549236,108549236,NULL,-0.20999999999999999222,-0.33000000000000001554,-0.66000000000000003108,1,'2019-11-14 13:02:23.326936');
INSERT INTO cryptocoins_cryptocurrency VALUES(3,'XRP','ripple','XRP',3,0.27000000000000001776,3.0800000000000003264e-05,1320452064.109999895,11621563439,43298481757,99991298961,100000000000,-0.33000000000000001554,-1.830000000000000071,-8.2200000000000006394,1,'2019-11-14 13:02:23.337368');
INSERT INTO cryptocoins_cryptocurrency VALUES(4,'Bitcoin Cash','bitcoin-cash','BCH',4,278.92000000000001591,0.032052900000000002223,1759248534.3499999045,5051906817,18112350,18112350,21000000,0.17000000000000001221,-3,-4.7599999999999997868,3,'2019-11-14 13:02:23.348683');
INSERT INTO cryptocoins_cryptocurrency VALUES(5,'Tether','tether','USDT',5,1.0100000000000000088,0.00011589999999999999824,21723260838.700000762,4141681919,4108044456,4207771504,NULL,-0.23000000000000000999,0.33000000000000001554,0.4500000000000000111,1,'2019-11-14 13:02:23.360212');
INSERT INTO cryptocoins_cryptocurrency VALUES(6,'Litecoin','litecoin','LTC',6,59.590000000000003408,0.0068474000000000000143,3109257723.480000019,3794246681,63677546,63677546,84000000,-0.23999999999999999111,-2.8799999999999998934,-4.0999999999999996447,2,'2019-11-14 13:02:23.368167');
INSERT INTO cryptocoins_cryptocurrency VALUES(7,'Binance Coin','binance-coin','BNB',7,21.059999999999998721,0.0024204000000000000687,249492508.88999998569,3275971500,155536713,187536713,187536713,-0.17000000000000001221,-1.4499999999999999555,2.830000000000000071,4,'2019-11-14 13:02:23.379461');
INSERT INTO cryptocoins_cryptocurrency VALUES(8,'EOS','eos','EOS',8,3.3999999999999999111,0.00039090000000000001481,1860935907.3099999427,3198081552,940122499,1036822510,NULL,-0.17000000000000001221,-2.080000000000000071,-2.9399999999999999467,4,'2019-11-14 13:02:23.392886');
INSERT INTO cryptocoins_cryptocurrency VALUES(9,'Bitcoin SV','bitcoin-sv','BSV',9,126.96999999999999886,0.014591500000000000303,530074998.47000002861,2294203717,18068415,18068415,21000000,-0.040000000000000000832,-2.3199999999999998401,-5.3600000000000003197,4,'2019-11-14 13:02:23.401673');
INSERT INTO cryptocoins_cryptocurrency VALUES(10,'Stellar','stellar','XLM',10,0.070000000000000006661,8.4999999999999999332e-06,221781703.96000000835,1487705781,20054779554,50000000000,NULL,-0.38000000000000000444,-3.5699999999999998401,-1.4899999999999999911,3,'2019-11-14 13:02:23.561750');
INSERT INTO cryptocoins_cryptocurrency VALUES(11,'TRON','tron','TRX',11,0.020000000000000000416,2.2000000000000001121e-06,980490610.1900000572,1287970796,66682072191,99281283754,NULL,-0.19000000000000000222,-3.2700000000000000177,-1.3400000000000000799,4,'2019-11-14 13:02:23.580556');
INSERT INTO cryptocoins_cryptocurrency VALUES(12,'Monero','monero','XMR',12,65.409999999999996591,0.007516700000000000291,216295403.15000000596,1132053140,17307191,17307191,NULL,0.40999999999999997557,2.0299999999999998046,2.4100000000000001421,4,'2019-11-14 13:02:23.865186');
INSERT INTO cryptocoins_cryptocurrency VALUES(13,'Chainlink','chainlink','LINK',13,3.1499999999999999111,0.00036150000000000000492,222650743.00999999046,1100874804,350000000,1000000000,NULL,0.059999999999999997779,4.9100000000000001421,16.929999999999999715,2,'2019-11-14 13:02:24.018831');
INSERT INTO cryptocoins_cryptocurrency VALUES(14,'Cardano','cardano','ADA',14,0.040000000000000000832,4.8999999999999996722e-06,50109279.409999996422,1100802773,25927070538,31112483745,45000000000,-0.30999999999999999777,-2.8900000000000001243,-2.2000000000000001776,4,'2019-11-14 13:02:24.028154');
INSERT INTO cryptocoins_cryptocurrency VALUES(15,'UNUS SED LEO','unus-sed-leo','LEO',15,0.95999999999999996447,0.00011079999999999999625,10350055.089999999851,964089675,999498893,999498893,NULL,0.25,-0.78000000000000002664,-2.1200000000000001065,3,'2019-11-14 13:02:24.041260');
INSERT INTO cryptocoins_cryptocurrency VALUES(16,'Huobi Token','huobi-token','HT',16,3.8199999999999998401,0.00043859999999999998163,139824241.05000001192,920975914,241284047,500000000,NULL,-0.16000000000000000333,-1.1299999999999998934,-4.2400000000000002131,4,'2019-11-14 13:02:24.073342');
INSERT INTO cryptocoins_cryptocurrency VALUES(17,'NEO','neo','NEO',17,12.630000000000000781,0.0014510000000000000328,586311923.59000003336,890634200,70538831,100000000,100000000,-0.070000000000000006661,-2.7299999999999999822,15.919999999999999928,4,'2019-11-14 13:02:24.090088');
INSERT INTO cryptocoins_cryptocurrency VALUES(18,'Tezos','tezos','XTZ',18,1.1299999999999998934,0.00013039999999999999833,23753112.120000001042,749360971,660373612,801312599,NULL,-0.25,-2.0600000000000000532,-4.3099999999999996092,1,'2019-11-14 13:02:24.109797');
INSERT INTO cryptocoins_cryptocurrency VALUES(19,'Cosmos','cosmos','ATOM',19,3.8799999999999998934,0.00044589999999999999644,149563435.88999998569,739868623,190688439,237928231,NULL,0.2000000000000000111,-4.1200000000000001065,4.1399999999999996802,4,'2019-11-14 13:02:24.161413');
INSERT INTO cryptocoins_cryptocurrency VALUES(20,'IOTA','iota','MIOTA',20,0.26000000000000000888,3.0300000000000001276e-05,11630413.929999999702,732692541,2779530283,2779530283,2779530283,-0.28999999999999998001,1.1399999999999999023,-3.2599999999999997868,4,'2019-11-14 13:02:24.331084');
INSERT INTO cryptocoins_cryptocurrency VALUES(21,'Maker','maker','MKR',21,648.21000000000003637,0.074490700000000006908,5322465.8899999996645,648209078,1000000,1000000,NULL,-0.6899999999999999467,-1.1999999999999999555,6.5400000000000000355,3,'2019-11-14 13:02:24.340798');
INSERT INTO cryptocoins_cryptocurrency VALUES(22,'Dash','dash','DASH',22,69.180000000000006822,0.0079503999999999998282,358987265.99000000954,633244873,9153124,9153124,18900000,-0.14999999999999999444,-1.6999999999999999555,-5.3799999999999998934,4,'2019-11-14 13:02:24.350610');
INSERT INTO cryptocoins_cryptocurrency VALUES(23,'Ethereum Classic','ethereum-classic','ETC',23,4.75,0.00054640000000000005404,639189241.87999999523,547166873,115073018,115073018,210000000,-0.11999999999999999555,-2.9500000000000001776,-7.830000000000000071,2,'2019-11-14 13:02:24.374421');
INSERT INTO cryptocoins_cryptocurrency VALUES(24,'Ontology','ontology','ONT',24,0.88000000000000000444,0.0001006999999999999947,153960527.11000001431,514697022,587351170,1000000000,NULL,-0.4500000000000000111,-5.7999999999999998223,0.050000000000000002775,1,'2019-11-14 13:02:24.383615');
INSERT INTO cryptocoins_cryptocurrency VALUES(25,'Crypto.com Coin','crypto-com-coin','CRO',25,0.040000000000000000832,4.500000000000000114e-06,23145358.359999999404,461253310,11666666667,100000000000,NULL,-1.25,13.859999999999999431,1.1699999999999999289,2,'2019-11-14 13:02:24.408253');
INSERT INTO cryptocoins_cryptocurrency VALUES(26,'USD Coin','usd-coin','USDC',26,1.0100000000000000088,0.00011620000000000000554,211667810.84000000356,444921174,440065018,442508265,NULL,-0.27000000000000001776,0.5500000000000000444,0.61999999999999999555,2,'2019-11-14 13:02:24.428173');
INSERT INTO cryptocoins_cryptocurrency VALUES(27,'VeChain','vechain','VET',27,0.010000000000000000208,7.9999999999999996378e-07,80948625.870000004769,365184175,55454734800,86712634466,NULL,1.6399999999999999023,2.5499999999999998223,21.489999999999998437,4,'2019-11-14 13:02:24.462966');
INSERT INTO cryptocoins_cryptocurrency VALUES(28,'INO COIN','ino-coin','INO',28,2,0.00022939999999999999237,5487.4499999999998178,359383477,180003180,1000000000,NULL,-0.13000000000000000444,-0.39000000000000001332,-1.2399999999999999911,2,'2019-11-14 13:02:24.472383');
INSERT INTO cryptocoins_cryptocurrency VALUES(29,'NEM','nem','XEM',29,0.040000000000000000832,4.6000000000000000038e-06,8646519.6799999997018,358752998,8999999999,8999999999,NULL,0.059999999999999997779,-1.4199999999999999289,-5.0999999999999996447,3,'2019-11-14 13:02:24.482358');
INSERT INTO cryptocoins_cryptocurrency VALUES(30,'Basic Attention Token','basic-attention-token','BAT',30,0.26000000000000000888,3.0199999999999998846e-05,77159231.019999995828,356011837,1356386751,1500000000,NULL,-0.23999999999999999111,6.7999999999999998223,3.2799999999999998046,1,'2019-11-14 13:02:24.492277');
INSERT INTO cryptocoins_cryptocurrency VALUES(31,'Dogecoin','dogecoin','DOGE',31,0,2.9999999999999998642e-07,78189929.299999997021,322901925,122050253672,122050253672,NULL,-0.28000000000000002664,-1.1399999999999999023,-0.94999999999999995559,2,'2019-11-14 13:02:24.510996');
INSERT INTO cryptocoins_cryptocurrency VALUES(32,'Zcash','zcash','ZEC',32,36.679999999999999716,0.0042154000000000002232,129864301.39000000059,287911709,7848794,7848794,NULL,-0.5500000000000000444,-0.98999999999999999111,-5.5199999999999995736,1,'2019-11-14 13:02:24.524844');
INSERT INTO cryptocoins_cryptocurrency VALUES(33,'PRIZM','prizm','PZM',33,0.68000000000000004884,7.8200000000000003449e-05,477464.929999999993,261891479,385100587,385100587,6000000000,0.080000000000000001665,0.91000000000000003108,-12.230000000000000425,2,'2019-11-14 13:02:24.535839');
INSERT INTO cryptocoins_cryptocurrency VALUES(34,'Paxos Standard','paxos-standard','PAX',34,1.0100000000000000088,0.00011629999999999999441,192326585.62000000476,232199989,229434803,229937967,NULL,-0.2000000000000000111,0.51000000000000000888,0.66000000000000003108,1,'2019-11-14 13:02:24.552107');
INSERT INTO cryptocoins_cryptocurrency VALUES(35,'Decred','decred','DCR',35,21.60999999999999943,0.0024837999999999999835,13546490.949999999255,230681127,10672670,10672670,21000000,1.7900000000000000355,-1.8400000000000000799,1.90999999999999992,4,'2019-11-14 13:02:24.563973');
INSERT INTO cryptocoins_cryptocurrency VALUES(36,'Insight Chain','insight-chain','INB',36,0.64000000000000001332,7.3399999999999995196e-05,13333700.019999999553,223477311,349902689,10000000000,NULL,-0.48999999999999999111,-6.9599999999999999644,-13.369999999999999217,1,'2019-11-14 13:02:24.575116');
INSERT INTO cryptocoins_cryptocurrency VALUES(37,'MEXC Token','mexc-token','MEXC',37,0.23999999999999999111,2.7200000000000000462e-05,356174.72999999998137,217686670,920072826,1433904862,1714285714,-0.28000000000000002664,0.28999999999999998001,8.7400000000000002131,4,'2019-11-14 13:02:24.608218');
INSERT INTO cryptocoins_cryptocurrency VALUES(38,'Qtum','qtum','QTUM',38,2.25,0.0002585999999999999974,334558632.12000000476,216424168,96163212,101913232,107822406,-0.28999999999999998001,-1.1299999999999998934,1.7600000000000000088,3,'2019-11-14 13:02:24.639749');
INSERT INTO cryptocoins_cryptocurrency VALUES(39,'HedgeTrade','hedgetrade','HEDG',39,0.71999999999999997335,8.2499999999999999548e-05,198293.3399999999965,207075296,288330855,1000000000,NULL,-0.72999999999999998223,-0.93000000000000004884,-6.2999999999999998223,1,'2019-11-14 13:02:24.678272');
INSERT INTO cryptocoins_cryptocurrency VALUES(40,'MINDOL','mindol','MIN',40,1.3600000000000000976,0.00015589999999999999474,3371581.9399999999441,191764561,141339316,240000000,NULL,-9.1199999999999992184,-18.670000000000001705,72.900000000000005685,1,'2019-11-14 13:02:24.691118');
INSERT INTO cryptocoins_cryptocurrency VALUES(41,'0x','0x','ZRX',41,0.28999999999999998001,3.2900000000000000099e-05,55713994.380000002684,172208038,602005041,1000000000,NULL,-1.0100000000000000088,-4.7400000000000002131,-5.3899999999999996802,4,'2019-11-14 13:02:24.702137');
INSERT INTO cryptocoins_cryptocurrency VALUES(42,'ThoreNext','thorenext','THX',42,7.8899999999999996802,0.00090689999999999998045,161700.51999999998952,170877665,21652254,210000000,210000000,-0.25,2.7000000000000001776,-6.2099999999999999644,1,'2019-11-14 13:02:24.713124');
INSERT INTO cryptocoins_cryptocurrency VALUES(43,'TrueUSD','trueusd','TUSD',43,1.0100000000000000088,0.00011610000000000000311,140353201.24000000953,170394435,168616679,168616679,NULL,-0.10000000000000000555,0.46999999999999997335,0.6500000000000000222,3,'2019-11-14 13:02:24.723933');
INSERT INTO cryptocoins_cryptocurrency VALUES(44,'Holo','holo','HOT',44,0,9.9999999999999995472e-08,12943946.480000000446,159168861,161335841957,177619433541,NULL,0.30999999999999999777,-2.3599999999999998756,1.3000000000000000444,1,'2019-11-14 13:02:24.745011');
INSERT INTO cryptocoins_cryptocurrency VALUES(45,'Centrality','centrality','CENNZ',45,0.14000000000000001332,1.6600000000000000307e-05,521265.57000000000698,153166111,1063737442,1200000000,NULL,1.2700000000000000177,3.8799999999999998934,7.2999999999999998223,3,'2019-11-14 13:02:24.757890');
INSERT INTO cryptocoins_cryptocurrency VALUES(46,'V Systems','v-systems','VSYS',46,0.080000000000000001665,9.0000000000000002281e-06,3629174.2200000002048,144922919,1851300222,3766158686,NULL,0.080000000000000001665,-3.9900000000000002131,3.2900000000000000355,3,'2019-11-14 13:02:24.785724');
INSERT INTO cryptocoins_cryptocurrency VALUES(47,'ThoreCoin','thorecoin','THR',47,1648.1700000000000728,0.18940419999999999478,149772.39999999999417,142873548,86686,100000,NULL,-0.29999999999999998889,-1.1000000000000000888,-5.8799999999999998934,1,'2019-11-14 13:02:24.798552');
INSERT INTO cryptocoins_cryptocurrency VALUES(48,'Bitcoin Gold','bitcoin-gold','BTG',48,8.1500000000000003552,0.00093639999999999999277,12842727.980000000447,142718340,17513924,17513924,21000000,-0.71999999999999997335,-4.1399999999999996802,-8,3,'2019-11-14 13:02:24.840082');
INSERT INTO cryptocoins_cryptocurrency VALUES(49,'OmiseGO','omisego','OMG',49,0.96999999999999997335,0.00011189999999999999588,83881616.629999995234,136556971,140245398,140245398,NULL,0.47999999999999998223,-0.51000000000000000888,-1.4199999999999999289,3,'2019-11-14 13:02:24.868002');
INSERT INTO cryptocoins_cryptocurrency VALUES(50,'Ravencoin','ravencoin','RVN',50,0.029999999999999998889,3.1999999999999998551e-06,8445356.3599999994038,133339550,4851965000,4851965000,21000000000,0.19000000000000000222,-2.5,-6.2000000000000001776,4,'2019-11-14 13:02:24.879178');
INSERT INTO cryptocoins_cryptocurrency VALUES(51,'ZB','zb','ZB',51,0.28999999999999998001,3.2900000000000000099e-05,315473871.18999999761,132779565,463288810,2100000000,NULL,-0.38000000000000000444,-1.3999999999999999111,-4.6100000000000003197,3,'2019-11-14 13:02:24.890745');
INSERT INTO cryptocoins_cryptocurrency VALUES(52,'Nano','nano','NANO',52,0.94999999999999995559,0.00010969999999999999662,4138321.4599999999629,127164423,133248297,133248297,133248297,-0.39000000000000001332,-6.8499999999999996447,-4.5400000000000000355,1,'2019-11-14 13:02:24.918306');
INSERT INTO cryptocoins_cryptocurrency VALUES(53,'ABBC Coin','abbc-coin','ABBC',53,0.23000000000000000999,2.5999999999999998398e-05,59032436.159999996422,126132363,556626634,1004488460,NULL,-0.20999999999999999222,-0.8000000000000000444,7.9000000000000003552,3,'2019-11-14 13:02:24.942528');
INSERT INTO cryptocoins_cryptocurrency VALUES(54,'Synthetix Network Token','synthetix-network-token','SNX',54,0.84999999999999997779,9.8200000000000001697e-05,186936.10999999998602,122766732,143729615,150480769,NULL,-0.010000000000000000208,4.7000000000000001776,2.7000000000000001776,1,'2019-11-14 13:02:24.974074');
INSERT INTO cryptocoins_cryptocurrency VALUES(55,'Algorand','algorand','ALGO',55,0.28000000000000002664,3.2599999999999999583e-05,114736828.79999999702,122625158,432649165,2963921008,NULL,-0.040000000000000000832,2.0299999999999998046,3.4100000000000001421,4,'2019-11-14 13:02:24.985183');
INSERT INTO cryptocoins_cryptocurrency VALUES(56,'Augur','augur','REP',56,11.099999999999999644,0.0012753000000000000446,7814385.4400000004097,122076512,11000000,11000000,NULL,-0.88000000000000000444,-4.0700000000000002842,-0.11000000000000000055,1,'2019-11-14 13:02:25.022021');
INSERT INTO cryptocoins_cryptocurrency VALUES(57,'Mixin','mixin','XIN',57,260.37000000000000453,0.029921300000000001367,39082401.679999999701,120656047,463399,1000000,1000000,-1.5200000000000000177,1.4799999999999999822,2.6499999999999999111,3,'2019-11-14 13:02:25.081648');
INSERT INTO cryptocoins_cryptocurrency VALUES(58,'Bytom','bytom','BTM',58,0.11000000000000000055,1.3099999999999999936e-05,22197277.050000000745,114276414,1002499275,1407000000,NULL,-0.13000000000000000444,-3.4700000000000001953,-13.419999999999999929,4,'2019-11-14 13:02:25.099970');
INSERT INTO cryptocoins_cryptocurrency VALUES(59,'Cryptonex','cryptonex','CNX',59,1.9799999999999999822,0.00022790000000000001012,2283026.7900000000371,110436157,55686329,107135054,210000000,0.17999999999999999333,-1.2199999999999999733,-2.6000000000000000888,1,'2019-11-14 13:02:25.140440');
INSERT INTO cryptocoins_cryptocurrency VALUES(60,'LUNA','luna','LUNA',60,0.36999999999999999555,4.2400000000000000622e-05,2003632.1000000000931,106096216,287765804,995859074,NULL,-1.4799999999999999822,1.1899999999999999467,-17.839999999999999857,2,'2019-11-14 13:02:25.151952');
INSERT INTO cryptocoins_cryptocurrency VALUES(61,'Dai','dai','DAI',61,1.0100000000000000088,0.00011610000000000000311,4815235.2199999997393,103449388,102409770,102409770,NULL,-0.19000000000000000222,0.46000000000000001998,0.30999999999999999777,1,'2019-11-14 13:02:25.190884');
INSERT INTO cryptocoins_cryptocurrency VALUES(62,'Komodo','komodo','KMD',62,0.85999999999999998667,9.940000000000000376e-05,7550156.0899999998507,101092365,116922530,116922530,200000000,-0.070000000000000006661,-9.3499999999999996447,22.75,2,'2019-11-14 13:02:25.200940');
INSERT INTO cryptocoins_cryptocurrency VALUES(63,'KuCoin Shares','kucoin-shares','KCS',63,1.1799999999999999378,0.0001355999999999999892,5129656.0300000002608,97177310,82363551,172363551,NULL,0.39000000000000001332,-1.5300000000000000266,-12.410000000000000142,4,'2019-11-14 13:02:25.225698');
INSERT INTO cryptocoins_cryptocurrency VALUES(64,'EDUCare','educare','EKT',64,0.10000000000000000555,1.1500000000000000009e-05,5192638.3099999995902,95184115,950000000,1000000000,NULL,-0.47999999999999998223,-3.3399999999999998578,-14.310000000000000497,4,'2019-11-14 13:02:25.237071');
INSERT INTO cryptocoins_cryptocurrency VALUES(65,'Silverway','silverway','SLV',65,0.94999999999999995559,0.00010880000000000000185,5661507.8200000002982,94689654,100000000,1000000000,NULL,-0.010000000000000000208,-4.2900000000000000355,-13.839999999999999857,2,'2019-11-14 13:02:25.251300');
INSERT INTO cryptocoins_cryptocurrency VALUES(66,'DxChain Token','dxchain-token','DX',66,0,1.9999999999999999094e-07,4055454.2799999997951,92842329,50000000000,100000000000,NULL,-0.52000000000000001776,-0.86999999999999999555,89.140000000000000571,4,'2019-11-14 13:02:25.301083');
INSERT INTO cryptocoins_cryptocurrency VALUES(67,'Lisk','lisk','LSK',67,0.75,8.6399999999999999474e-05,1393379.600000000093,91298510,121481801,136513952,NULL,-0.059999999999999997779,-0.4500000000000000111,-6.4900000000000002131,1,'2019-11-14 13:02:25.736950');
INSERT INTO cryptocoins_cryptocurrency VALUES(68,'Bitcoin Diamond','bitcoin-diamond','BCD',68,0.48999999999999999111,5.5800000000000001074e-05,3284890.4900000002234,90642781,186492898,189492898,210000000,-0.34000000000000002442,-2.7799999999999998046,-6.8200000000000002842,2,'2019-11-14 13:02:25.743931');
INSERT INTO cryptocoins_cryptocurrency VALUES(69,'BitTorrent','bittorrent','BTT',69,0,0,65965806.789999999106,90281562,212116500000,990000000000,NULL,-0.17000000000000001221,-3.1200000000000001065,-6.8799999999999998934,3,'2019-11-14 13:02:25.750744');
INSERT INTO cryptocoins_cryptocurrency VALUES(70,'DigiByte','digibyte','DGB',70,0.010000000000000000208,7.9999999999999996378e-07,1400440.4899999999906,89565280,12488985987,12488985987,21000000000,-0.9000000000000000222,0.11000000000000000055,1.1000000000000000888,1,'2019-11-14 13:02:25.757605');
INSERT INTO cryptocoins_cryptocurrency VALUES(71,'Siacoin','siacoin','SC',71,0,1.9999999999999999094e-07,3615775.5800000000744,86710362,41817047634,41817047634,NULL,-0.38000000000000000444,0.14999999999999999444,0.56000000000000005329,4,'2019-11-14 13:02:25.765313');
INSERT INTO cryptocoins_cryptocurrency VALUES(72,'HyperCash','hypercash','HC',72,1.8400000000000000799,0.00021149999999999999095,3307689.2200000002049,81757788,44429003,44429003,84000000,0.39000000000000001332,-3.0699999999999998401,-4.0700000000000002842,4,'2019-11-14 13:02:25.773496');
INSERT INTO cryptocoins_cryptocurrency VALUES(73,'Quant','quant','QNT',73,6.7099999999999999644,0.00077059999999999997423,20520954.629999998957,80955490,12072738,14612493,NULL,-0.61999999999999999555,1.5700000000000000621,-1.3200000000000000621,1,'2019-11-14 13:02:25.782875');
INSERT INTO cryptocoins_cryptocurrency VALUES(74,'ICON','icon','ICX',74,0.16000000000000000333,1.8400000000000000014e-05,9137681.9199999999255,80832786,504362262,800460000,NULL,0.040000000000000000832,-5.7000000000000001776,-10.679999999999999715,3,'2019-11-14 13:02:25.806574');
INSERT INTO cryptocoins_cryptocurrency VALUES(75,'Seele','seele','SEELE',75,0.11000000000000000055,1.3099999999999999936e-05,77237947.159999996425,79653469,696705193,1000000000,NULL,0.28000000000000002664,23.390000000000000569,39.59000000000000341,1,'2019-11-14 13:02:25.814538');
INSERT INTO cryptocoins_cryptocurrency VALUES(76,'Swipe','swipe','SXP',76,1.2900000000000000355,0.00014789999999999999002,29453183.19000000134,78662466,61135911,300000000,NULL,-0.25,-0.35999999999999998667,4.8700000000000001065,1,'2019-11-14 13:02:25.822818');
INSERT INTO cryptocoins_cryptocurrency VALUES(77,'Bytecoin','bytecoin-bcn','BCN',77,0,0,11965.600000000000363,78395555,184066828814,184066828814,184470000000,-0.2000000000000000111,12.400000000000000355,2.2400000000000002131,1,'2019-11-14 13:02:26.018491');
INSERT INTO cryptocoins_cryptocurrency VALUES(78,'GAPS','gaps','GAP',78,7.7999999999999998223,0.00089639999999999999628,1729080.6100000001024,77999820,10000000,100000000,NULL,-0.23999999999999999111,0.020000000000000000416,3.2099999999999999644,3,'2019-11-14 13:02:26.027013');
INSERT INTO cryptocoins_cryptocurrency VALUES(79,'Waves','waves','WAVES',79,0.77000000000000001776,8.8200000000000002573e-05,14264915.880000000819,77001246,100330282,100330282,NULL,-0.70999999999999996447,-1.8000000000000000444,-4.6799999999999997157,3,'2019-11-14 13:02:26.036235');
INSERT INTO cryptocoins_cryptocurrency VALUES(80,'Dimension Chain','dimension-chain','EON',80,0.30999999999999999777,3.5899999999999998481e-05,7730917.3799999998883,76545660,244783561,2000000000,NULL,-0.26000000000000000888,-0.070000000000000006661,-7,4,'2019-11-14 13:02:26.046741');
INSERT INTO cryptocoins_cryptocurrency VALUES(81,'IOST','iostoken','IOST',81,0.010000000000000000208,6.9999999999999996838e-07,31023218.870000001043,76069462,12013965609,21000000000,NULL,-0.54000000000000003552,-3.4900000000000002131,-3.3599999999999998756,4,'2019-11-14 13:02:26.086758');
INSERT INTO cryptocoins_cryptocurrency VALUES(82,'THETA','theta','THETA',82,0.089999999999999996669,1.0000000000000000817e-05,10991628.630000000819,75992799,870502690,1000000000,NULL,0.020000000000000000416,-3.0499999999999998223,-4.9000000000000003552,1,'2019-11-14 13:02:26.112105');
INSERT INTO cryptocoins_cryptocurrency VALUES(83,'Karatgold Coin','karatgold-coin','KBC',83,0.020000000000000000416,2.3000000000000000019e-06,2375784.5400000000373,75586801,3752557397,12000000000,NULL,-0.22000000000000000111,-0.81000000000000005329,-2.4799999999999999822,3,'2019-11-14 13:02:26.131063');
INSERT INTO cryptocoins_cryptocurrency VALUES(84,'FTX Token','ftx-token','FTT',84,1.4199999999999999289,0.00016279999999999999983,3293430.1099999998695,74555153,52631546,348503882,NULL,-0.040000000000000000832,0.16000000000000000333,5.2000000000000001776,2,'2019-11-14 13:02:26.138960');
INSERT INTO cryptocoins_cryptocurrency VALUES(85,'BitShares','bitshares','BTS',85,0.029999999999999998889,3.0000000000000000758e-06,1760298.0300000000279,72779976,2747910000,2747910000,3600570502,-0.4500000000000000111,-1.5400000000000000355,-9.9600000000000008526,1,'2019-11-14 13:02:26.147428');
INSERT INTO cryptocoins_cryptocurrency VALUES(86,'Bitbook Gambling','bitbook-gambling','BXK',86,0.2000000000000000111,2.2600000000000000459e-05,579133.58999999996739,72330126,368387491,741456054,NULL,-1.8400000000000000799,-1.1299999999999998934,-3.3199999999999998401,1,'2019-11-14 13:02:26.156924');
INSERT INTO cryptocoins_cryptocurrency VALUES(87,'MonaCoin','monacoin','MONA',87,1.0700000000000000621,0.00012310000000000001062,705734.81999999994876,70397506,65729675,65729675,NULL,-0.17000000000000001221,-1.2800000000000000266,-2.5600000000000000532,4,'2019-11-14 13:02:26.189280');
INSERT INTO cryptocoins_cryptocurrency VALUES(88,'Aeternity','aeternity','AE',88,0.23000000000000000999,2.6800000000000000904e-05,37028297.880000002682,67889191,290856882,336677825,NULL,-0.64000000000000001332,-2.2900000000000000355,-2.5200000000000000177,4,'2019-11-14 13:02:26.210872');
INSERT INTO cryptocoins_cryptocurrency VALUES(89,'Beldex','beldex','BDX',89,0.070000000000000006661,7.9000000000000005955e-06,664850.31000000005588,67092186,980222595,1400222610,NULL,0.020000000000000000416,-0.14999999999999999444,-2.9900000000000002131,4,'2019-11-14 13:02:26.246353');
INSERT INTO cryptocoins_cryptocurrency VALUES(90,'MCO','crypto-com','MCO',90,4.2400000000000002131,0.00048730000000000002697,12062152.390000000595,66969404,15793831,31587682,NULL,-0.059999999999999997779,-3.9700000000000001953,-2.1600000000000001421,3,'2019-11-14 13:02:26.282357');
INSERT INTO cryptocoins_cryptocurrency VALUES(91,'OKB','okb','OKB',91,3.2999999999999998223,0.0003793000000000000039,101318832.84000000357,66007931,20000000,300000000,NULL,0.30999999999999999777,-0.070000000000000006661,-0.6500000000000000222,2,'2019-11-14 13:02:26.291955');
INSERT INTO cryptocoins_cryptocurrency VALUES(92,'Verge','verge','XVG',92,0,3.9999999999999998188e-07,2094696.3400000000838,62126520,16050141269,16050141269,16555000000,1.2199999999999999733,-1.4899999999999999911,-2.2400000000000002131,4,'2019-11-14 13:02:26.301721');
INSERT INTO cryptocoins_cryptocurrency VALUES(93,'Nexo','nexo','NEXO',93,0.11000000000000000055,1.2300000000000000819e-05,10958682.47000000067,60008509,560000011,1000000000,NULL,-0.16000000000000000333,1.1200000000000001065,5.1900000000000003907,1,'2019-11-14 13:02:26.310631');
INSERT INTO cryptocoins_cryptocurrency VALUES(94,'MaidSafeCoin','maidsafecoin','MAID',94,0.13000000000000000444,1.5099999999999999423e-05,295854.17999999999301,59438371,452552412,452552412,NULL,-0.27000000000000001776,-0.76000000000000000888,-2.0400000000000000355,4,'2019-11-14 13:02:26.320091');
INSERT INTO cryptocoins_cryptocurrency VALUES(95,'Aurora','aurora','AOA',95,0.010000000000000000208,9.9999999999999995472e-07,2805817.7599999997765,58804011,6542330148,10000000000,NULL,-0.22000000000000000111,-26.899999999999998578,9.4900000000000002131,3,'2019-11-14 13:02:26.330568');
INSERT INTO cryptocoins_cryptocurrency VALUES(96,'iExec RLC','rlc','RLC',96,0.72999999999999998223,8.4200000000000000208e-05,912359.84999999997675,58690317,80070793,86999785,NULL,1.75,-2.6499999999999999111,10.640000000000000568,1,'2019-11-14 13:02:26.339720');
INSERT INTO cryptocoins_cryptocurrency VALUES(97,'BitMax Token','bitmax-token','BTMX',97,0.070000000000000006661,7.9999999999999996378e-06,3352881.2900000000373,54953077,787683608,787683608,NULL,-0.71999999999999997335,0.82999999999999996003,1.1799999999999999378,4,'2019-11-14 13:02:26.349654');
INSERT INTO cryptocoins_cryptocurrency VALUES(98,'Flexacoin','flexacoin','FXC',98,0,2.9999999999999998642e-07,21826.639999999999418,54053204,21223945749,21223945749,100000000000,0.010000000000000000208,2.5299999999999998046,-0.39000000000000001332,1,'2019-11-14 13:02:26.359969');
INSERT INTO cryptocoins_cryptocurrency VALUES(99,'Chiliz','chiliz','CHZ',99,0.010000000000000000208,1.5999999999999999275e-06,11396114.279999999329,53955717,3762769182,8888888888,NULL,0.83999999999999996891,-3.4100000000000001421,5.4400000000000003907,2,'2019-11-14 13:02:26.376334');
INSERT INTO cryptocoins_cryptocurrency VALUES(100,'Ardor','ardor','ARDR',100,0.050000000000000002775,6.1000000000000000411e-06,2348665.9799999999812,53205799,998999495,998999495,998999495,-0.34000000000000002442,-4.2199999999999997513,-3.5600000000000000532,1,'2019-11-14 13:02:26.387078');
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('django_migrations',20);
INSERT INTO sqlite_sequence VALUES('django_admin_log',0);
INSERT INTO sqlite_sequence VALUES('django_content_type',8);
INSERT INTO sqlite_sequence VALUES('auth_permission',32);
INSERT INTO sqlite_sequence VALUES('auth_user',0);
INSERT INTO sqlite_sequence VALUES('auth_group',0);
INSERT INTO sqlite_sequence VALUES('cryptocoins_cryptocurrency',100);
INSERT INTO sqlite_sequence VALUES('cryptocoins_exchange',4);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "cryptocoins_cryptocurrency_exchange_id_bd2ef076" ON "cryptocoins_cryptocurrency" ("exchange_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
COMMIT;