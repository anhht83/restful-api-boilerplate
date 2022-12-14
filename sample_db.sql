/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : adverttu3

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 24/08/2022 17:08:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries`  (
  `id` int UNSIGNED NOT NULL,
  `capital` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `citizenship` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `country_code` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `currency_sub_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `currency_symbol` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `currency_decimals` int NULL DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `iso_3166_2` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `iso_3166_3` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `region_code` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sub_region_code` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `eea` tinyint(1) NOT NULL DEFAULT 0,
  `calling_code` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `flag` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `countries_id_index`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES (4, 'Kabul', 'Afghan', '004', 'afghani', 'AFN', 'pul', '??', 2, 'Islamic Republic of Afghanistan', 'AF', 'AFG', 'Afghanistan', '142', '034', 0, '93', 'AF.png', NULL, NULL);
INSERT INTO `countries` VALUES (8, 'Tirana', 'Albanian', '008', 'lek', 'ALL', '(qindar (pl. qindarka))', 'Lek', 2, 'Republic of Albania', 'AL', 'ALB', 'Albania', '150', '039', 0, '355', 'AL.png', NULL, NULL);
INSERT INTO `countries` VALUES (10, 'Antartica', 'of Antartica', '010', '', '', '', '', 2, 'Antarctica', 'AQ', 'ATA', 'Antarctica', '', '', 0, '672', 'AQ.png', NULL, NULL);
INSERT INTO `countries` VALUES (12, 'Algiers', 'Algerian', '012', 'Algerian dinar', 'DZD', 'centime', 'DZD', 2, 'People???s Democratic Republic of Algeria', 'DZ', 'DZA', 'Algeria', '002', '015', 0, '213', 'DZ.png', NULL, NULL);
INSERT INTO `countries` VALUES (16, 'Pago Pago', 'American Samoan', '016', 'US dollar', 'USD', 'cent', '$', 2, 'Territory of American', 'AS', 'ASM', 'American Samoa', '009', '061', 0, '1', 'AS.png', NULL, NULL);
INSERT INTO `countries` VALUES (20, 'Andorra la Vella', 'Andorran', '020', 'euro', 'EUR', 'cent', '???', 2, 'Principality of Andorra', 'AD', 'AND', 'Andorra', '150', '039', 0, '376', 'AD.png', NULL, NULL);
INSERT INTO `countries` VALUES (24, 'Luanda', 'Angolan', '024', 'kwanza', 'AOA', 'c??ntimo', 'Kz', 2, 'Republic of Angola', 'AO', 'AGO', 'Angola', '002', '017', 0, '244', 'AO.png', NULL, NULL);
INSERT INTO `countries` VALUES (28, 'St John???s', 'of Antigua and Barbuda', '028', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Antigua and Barbuda', 'AG', 'ATG', 'Antigua and Barbuda', '019', '029', 0, '1', 'AG.png', NULL, NULL);
INSERT INTO `countries` VALUES (31, 'Baku', 'Azerbaijani', '031', 'Azerbaijani manat', 'AZN', 'kepik (inv.)', '??????', 2, 'Republic of Azerbaijan', 'AZ', 'AZE', 'Azerbaijan', '142', '145', 0, '994', 'AZ.png', NULL, NULL);
INSERT INTO `countries` VALUES (32, 'Buenos Aires', 'Argentinian', '032', 'Argentine peso', 'ARS', 'centavo', '$', 2, 'Argentine Republic', 'AR', 'ARG', 'Argentina', '019', '005', 0, '54', 'AR.png', NULL, NULL);
INSERT INTO `countries` VALUES (36, 'Canberra', 'Australian', '036', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Commonwealth of Australia', 'AU', 'AUS', 'Australia', '009', '053', 0, '61', 'AU.png', NULL, NULL);
INSERT INTO `countries` VALUES (40, 'Vienna', 'Austrian', '040', 'euro', 'EUR', 'cent', '???', 2, 'Republic of Austria', 'AT', 'AUT', 'Austria', '150', '155', 1, '43', 'AT.png', NULL, NULL);
INSERT INTO `countries` VALUES (44, 'Nassau', 'Bahamian', '044', 'Bahamian dollar', 'BSD', 'cent', '$', 2, 'Commonwealth of the Bahamas', 'BS', 'BHS', 'Bahamas', '019', '029', 0, '1', 'BS.png', NULL, NULL);
INSERT INTO `countries` VALUES (48, 'Manama', 'Bahraini', '048', 'Bahraini dinar', 'BHD', 'fils (inv.)', 'BHD', 3, 'Kingdom of Bahrain', 'BH', 'BHR', 'Bahrain', '142', '145', 0, '973', 'BH.png', NULL, NULL);
INSERT INTO `countries` VALUES (50, 'Dhaka', 'Bangladeshi', '050', 'taka (inv.)', 'BDT', 'poisha (inv.)', 'BDT', 2, 'People???s Republic of Bangladesh', 'BD', 'BGD', 'Bangladesh', '142', '034', 0, '880', 'BD.png', NULL, NULL);
INSERT INTO `countries` VALUES (51, 'Yerevan', 'Armenian', '051', 'dram (inv.)', 'AMD', 'luma', 'AMD', 2, 'Republic of Armenia', 'AM', 'ARM', 'Armenia', '142', '145', 0, '374', 'AM.png', NULL, NULL);
INSERT INTO `countries` VALUES (52, 'Bridgetown', 'Barbadian', '052', 'Barbados dollar', 'BBD', 'cent', '$', 2, 'Barbados', 'BB', 'BRB', 'Barbados', '019', '029', 0, '1', 'BB.png', NULL, NULL);
INSERT INTO `countries` VALUES (56, 'Brussels', 'Belgian', '056', 'euro', 'EUR', 'cent', '???', 2, 'Kingdom of Belgium', 'BE', 'BEL', 'Belgium', '150', '155', 1, '32', 'BE.png', NULL, NULL);
INSERT INTO `countries` VALUES (60, 'Hamilton', 'Bermudian', '060', 'Bermuda dollar', 'BMD', 'cent', '$', 2, 'Bermuda', 'BM', 'BMU', 'Bermuda', '019', '021', 0, '1', 'BM.png', NULL, NULL);
INSERT INTO `countries` VALUES (64, 'Thimphu', 'Bhutanese', '064', 'ngultrum (inv.)', 'BTN', 'chhetrum (inv.)', 'BTN', 2, 'Kingdom of Bhutan', 'BT', 'BTN', 'Bhutan', '142', '034', 0, '975', 'BT.png', NULL, NULL);
INSERT INTO `countries` VALUES (68, 'Sucre (BO1)', 'Bolivian', '068', 'boliviano', 'BOB', 'centavo', '$b', 2, 'Plurinational State of Bolivia', 'BO', 'BOL', 'Bolivia, Plurinational State of', '019', '005', 0, '591', 'BO.png', NULL, NULL);
INSERT INTO `countries` VALUES (70, 'Sarajevo', 'of Bosnia and Herzegovina', '070', 'convertible mark', 'BAM', 'fening', 'KM', 2, 'Bosnia and Herzegovina', 'BA', 'BIH', 'Bosnia and Herzegovina', '150', '039', 0, '387', 'BA.png', NULL, NULL);
INSERT INTO `countries` VALUES (72, 'Gaborone', 'Botswanan', '072', 'pula (inv.)', 'BWP', 'thebe (inv.)', 'P', 2, 'Republic of Botswana', 'BW', 'BWA', 'Botswana', '002', '018', 0, '267', 'BW.png', NULL, NULL);
INSERT INTO `countries` VALUES (74, 'Bouvet island', 'of Bouvet island', '074', '', '', '', 'kr', 2, 'Bouvet Island', 'BV', 'BVT', 'Bouvet Island', '', '', 0, '47', 'BV.png', NULL, NULL);
INSERT INTO `countries` VALUES (76, 'Brasilia', 'Brazilian', '076', 'real (pl. reais)', 'BRL', 'centavo', 'R$', 2, 'Federative Republic of Brazil', 'BR', 'BRA', 'Brazil', '019', '005', 0, '55', 'BR.png', NULL, NULL);
INSERT INTO `countries` VALUES (84, 'Belmopan', 'Belizean', '084', 'Belize dollar', 'BZD', 'cent', 'BZ$', 2, 'Belize', 'BZ', 'BLZ', 'Belize', '019', '013', 0, '501', 'BZ.png', NULL, NULL);
INSERT INTO `countries` VALUES (86, 'Diego Garcia', 'Changosian', '086', 'US dollar', 'USD', 'cent', '$', 2, 'British Indian Ocean Territory', 'IO', 'IOT', 'British Indian Ocean Territory', '', '', 0, '246', 'IO.png', NULL, NULL);
INSERT INTO `countries` VALUES (90, 'Honiara', 'Solomon Islander', '090', 'Solomon Islands dollar', 'SBD', 'cent', '$', 2, 'Solomon Islands', 'SB', 'SLB', 'Solomon Islands', '009', '054', 0, '677', 'SB.png', NULL, NULL);
INSERT INTO `countries` VALUES (92, 'Road Town', 'British Virgin Islander;', '092', 'US dollar', 'USD', 'cent', '$', 2, 'British Virgin Islands', 'VG', 'VGB', 'Virgin Islands, British', '019', '029', 0, '1', 'VG.png', NULL, NULL);
INSERT INTO `countries` VALUES (96, 'Bandar Seri Begawan', 'Bruneian', '096', 'Brunei dollar', 'BND', 'sen (inv.)', '$', 2, 'Brunei Darussalam', 'BN', 'BRN', 'Brunei Darussalam', '142', '035', 0, '673', 'BN.png', NULL, NULL);
INSERT INTO `countries` VALUES (100, 'Sofia', 'Bulgarian', '100', 'lev (pl. leva)', 'BGN', 'stotinka', '????', 2, 'Republic of Bulgaria', 'BG', 'BGR', 'Bulgaria', '150', '151', 1, '359', 'BG.png', NULL, NULL);
INSERT INTO `countries` VALUES (104, 'Yangon', 'Burmese', '104', 'kyat', 'MMK', 'pya', 'K', 2, 'Union of Myanmar/', 'MM', 'MMR', 'Myanmar', '142', '035', 0, '95', 'MM.png', NULL, NULL);
INSERT INTO `countries` VALUES (108, 'Bujumbura', 'Burundian', '108', 'Burundi franc', 'BIF', 'centime', 'BIF', 0, 'Republic of Burundi', 'BI', 'BDI', 'Burundi', '002', '014', 0, '257', 'BI.png', NULL, NULL);
INSERT INTO `countries` VALUES (112, 'Minsk', 'Belarusian', '112', 'Belarusian rouble', 'BYR', 'kopek', 'p.', 2, 'Republic of Belarus', 'BY', 'BLR', 'Belarus', '150', '151', 0, '375', 'BY.png', NULL, NULL);
INSERT INTO `countries` VALUES (116, 'Phnom Penh', 'Cambodian', '116', 'riel', 'KHR', 'sen (inv.)', '???', 2, 'Kingdom of Cambodia', 'KH', 'KHM', 'Cambodia', '142', '035', 0, '855', 'KH.png', NULL, NULL);
INSERT INTO `countries` VALUES (120, 'Yaound??', 'Cameroonian', '120', 'CFA franc (BEAC)', 'XAF', 'centime', 'FCF', 0, 'Republic of Cameroon', 'CM', 'CMR', 'Cameroon', '002', '017', 0, '237', 'CM.png', NULL, NULL);
INSERT INTO `countries` VALUES (124, 'Ottawa', 'Canadian', '124', 'Canadian dollar', 'CAD', 'cent', '$', 2, 'Canada', 'CA', 'CAN', 'Canada', '019', '021', 0, '1', 'CA.png', NULL, NULL);
INSERT INTO `countries` VALUES (132, 'Praia', 'Cape Verdean', '132', 'Cape Verde escudo', 'CVE', 'centavo', 'CVE', 2, 'Republic of Cape Verde', 'CV', 'CPV', 'Cape Verde', '002', '011', 0, '238', 'CV.png', NULL, NULL);
INSERT INTO `countries` VALUES (136, 'George Town', 'Caymanian', '136', 'Cayman Islands dollar', 'KYD', 'cent', '$', 2, 'Cayman Islands', 'KY', 'CYM', 'Cayman Islands', '019', '029', 0, '1', 'KY.png', NULL, NULL);
INSERT INTO `countries` VALUES (140, 'Bangui', 'Central African', '140', 'CFA franc (BEAC)', 'XAF', 'centime', 'CFA', 0, 'Central African Republic', 'CF', 'CAF', 'Central African Republic', '002', '017', 0, '236', 'CF.png', NULL, NULL);
INSERT INTO `countries` VALUES (144, 'Colombo', 'Sri Lankan', '144', 'Sri Lankan rupee', 'LKR', 'cent', '???', 2, 'Democratic Socialist Republic of Sri Lanka', 'LK', 'LKA', 'Sri Lanka', '142', '034', 0, '94', 'LK.png', NULL, NULL);
INSERT INTO `countries` VALUES (148, 'N???Djamena', 'Chadian', '148', 'CFA franc (BEAC)', 'XAF', 'centime', 'XAF', 0, 'Republic of Chad', 'TD', 'TCD', 'Chad', '002', '017', 0, '235', 'TD.png', NULL, NULL);
INSERT INTO `countries` VALUES (152, 'Santiago', 'Chilean', '152', 'Chilean peso', 'CLP', 'centavo', 'CLP', 0, 'Republic of Chile', 'CL', 'CHL', 'Chile', '019', '005', 0, '56', 'CL.png', NULL, NULL);
INSERT INTO `countries` VALUES (156, 'Beijing', 'Chinese', '156', 'renminbi-yuan (inv.)', 'CNY', 'jiao (10)', '??', 2, 'People???s Republic of China', 'CN', 'CHN', 'China', '142', '030', 0, '86', 'CN.png', NULL, NULL);
INSERT INTO `countries` VALUES (158, 'Taipei', 'Taiwanese', '158', 'new Taiwan dollar', 'TWD', 'fen (inv.)', 'NT$', 2, 'Republic of China, Taiwan (TW1)', 'TW', 'TWN', 'Taiwan, Province of China', '142', '030', 0, '886', 'TW.png', NULL, NULL);
INSERT INTO `countries` VALUES (162, 'Flying Fish Cove', 'Christmas Islander', '162', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Christmas Island Territory', 'CX', 'CXR', 'Christmas Island', '', '', 0, '61', 'CX.png', NULL, NULL);
INSERT INTO `countries` VALUES (166, 'Bantam', 'Cocos Islander', '166', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Territory of Cocos (Keeling) Islands', 'CC', 'CCK', 'Cocos (Keeling) Islands', '', '', 0, '61', 'CC.png', NULL, NULL);
INSERT INTO `countries` VALUES (170, 'Santa Fe de Bogot??', 'Colombian', '170', 'Colombian peso', 'COP', 'centavo', '$', 2, 'Republic of Colombia', 'CO', 'COL', 'Colombia', '019', '005', 0, '57', 'CO.png', NULL, NULL);
INSERT INTO `countries` VALUES (174, 'Moroni', 'Comorian', '174', 'Comorian franc', 'KMF', '', 'KMF', 0, 'Union of the Comoros', 'KM', 'COM', 'Comoros', '002', '014', 0, '269', 'KM.png', NULL, NULL);
INSERT INTO `countries` VALUES (175, 'Mamoudzou', 'Mahorais', '175', 'euro', 'EUR', 'cent', '???', 2, 'Departmental Collectivity of Mayotte', 'YT', 'MYT', 'Mayotte', '002', '014', 0, '262', 'YT.png', NULL, NULL);
INSERT INTO `countries` VALUES (178, 'Brazzaville', 'Congolese', '178', 'CFA franc (BEAC)', 'XAF', 'centime', 'FCF', 0, 'Republic of the Congo', 'CG', 'COG', 'Congo', '002', '017', 0, '242', 'CG.png', NULL, NULL);
INSERT INTO `countries` VALUES (180, 'Kinshasa', 'Congolese', '180', 'Congolese franc', 'CDF', 'centime', 'CDF', 2, 'Democratic Republic of the Congo', 'CD', 'COD', 'Congo, the Democratic Republic of the', '002', '017', 0, '243', 'CD.png', NULL, NULL);
INSERT INTO `countries` VALUES (184, 'Avarua', 'Cook Islander', '184', 'New Zealand dollar', 'NZD', 'cent', '$', 2, 'Cook Islands', 'CK', 'COK', 'Cook Islands', '009', '061', 0, '682', 'CK.png', NULL, NULL);
INSERT INTO `countries` VALUES (188, 'San Jos??', 'Costa Rican', '188', 'Costa Rican col??n (pl. colones)', 'CRC', 'c??ntimo', '???', 2, 'Republic of Costa Rica', 'CR', 'CRI', 'Costa Rica', '019', '013', 0, '506', 'CR.png', NULL, NULL);
INSERT INTO `countries` VALUES (191, 'Zagreb', 'Croatian', '191', 'kuna (inv.)', 'HRK', 'lipa (inv.)', 'kn', 2, 'Republic of Croatia', 'HR', 'HRV', 'Croatia', '150', '039', 1, '385', 'HR.png', NULL, NULL);
INSERT INTO `countries` VALUES (192, 'Havana', 'Cuban', '192', 'Cuban peso', 'CUP', 'centavo', '???', 2, 'Republic of Cuba', 'CU', 'CUB', 'Cuba', '019', '029', 0, '53', 'CU.png', NULL, NULL);
INSERT INTO `countries` VALUES (196, 'Nicosia', 'Cypriot', '196', 'euro', 'EUR', 'cent', 'CYP', 2, 'Republic of Cyprus', 'CY', 'CYP', 'Cyprus', '142', '145', 1, '357', 'CY.png', NULL, NULL);
INSERT INTO `countries` VALUES (203, 'Prague', 'Czech', '203', 'Czech koruna (pl. koruny)', 'CZK', 'hal??r', 'K??', 2, 'Czech Republic', 'CZ', 'CZE', 'Czech Republic', '150', '151', 1, '420', 'CZ.png', NULL, NULL);
INSERT INTO `countries` VALUES (204, 'Porto Novo (BJ1)', 'Beninese', '204', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Benin', 'BJ', 'BEN', 'Benin', '002', '011', 0, '229', 'BJ.png', NULL, NULL);
INSERT INTO `countries` VALUES (208, 'Copenhagen', 'Danish', '208', 'Danish krone', 'DKK', '??re (inv.)', 'kr', 2, 'Kingdom of Denmark', 'DK', 'DNK', 'Denmark', '150', '154', 1, '45', 'DK.png', NULL, NULL);
INSERT INTO `countries` VALUES (212, 'Roseau', 'Dominican', '212', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Commonwealth of Dominica', 'DM', 'DMA', 'Dominica', '019', '029', 0, '1', 'DM.png', NULL, NULL);
INSERT INTO `countries` VALUES (214, 'Santo Domingo', 'Dominican', '214', 'Dominican peso', 'DOP', 'centavo', 'RD$', 2, 'Dominican Republic', 'DO', 'DOM', 'Dominican Republic', '019', '029', 0, '1', 'DO.png', NULL, NULL);
INSERT INTO `countries` VALUES (218, 'Quito', 'Ecuadorian', '218', 'US dollar', 'USD', 'cent', '$', 2, 'Republic of Ecuador', 'EC', 'ECU', 'Ecuador', '019', '005', 0, '593', 'EC.png', NULL, NULL);
INSERT INTO `countries` VALUES (222, 'San Salvador', 'Salvadoran', '222', 'Salvadorian col??n (pl. colones)', 'SVC', 'centavo', '$', 2, 'Republic of El Salvador', 'SV', 'SLV', 'El Salvador', '019', '013', 0, '503', 'SV.png', NULL, NULL);
INSERT INTO `countries` VALUES (226, 'Malabo', 'Equatorial Guinean', '226', 'CFA franc (BEAC)', 'XAF', 'centime', 'FCF', 2, 'Republic of Equatorial Guinea', 'GQ', 'GNQ', 'Equatorial Guinea', '002', '017', 0, '240', 'GQ.png', NULL, NULL);
INSERT INTO `countries` VALUES (231, 'Addis Ababa', 'Ethiopian', '231', 'birr (inv.)', 'ETB', 'cent', 'ETB', 2, 'Federal Democratic Republic of Ethiopia', 'ET', 'ETH', 'Ethiopia', '002', '014', 0, '251', 'ET.png', NULL, NULL);
INSERT INTO `countries` VALUES (232, 'Asmara', 'Eritrean', '232', 'nakfa', 'ERN', 'cent', 'Nfk', 2, 'State of Eritrea', 'ER', 'ERI', 'Eritrea', '002', '014', 0, '291', 'ER.png', NULL, NULL);
INSERT INTO `countries` VALUES (233, 'Tallinn', 'Estonian', '233', 'euro', 'EUR', 'cent', 'kr', 2, 'Republic of Estonia', 'EE', 'EST', 'Estonia', '150', '154', 1, '372', 'EE.png', NULL, NULL);
INSERT INTO `countries` VALUES (234, 'T??rshavn', 'Faeroese', '234', 'Danish krone', 'DKK', '??re (inv.)', 'kr', 2, 'Faeroe Islands', 'FO', 'FRO', 'Faroe Islands', '150', '154', 0, '298', 'FO.png', NULL, NULL);
INSERT INTO `countries` VALUES (238, 'Stanley', 'Falkland Islander', '238', 'Falkland Islands pound', 'FKP', 'new penny', '??', 2, 'Falkland Islands', 'FK', 'FLK', 'Falkland Islands (Malvinas)', '019', '005', 0, '500', 'FK.png', NULL, NULL);
INSERT INTO `countries` VALUES (239, 'King Edward Point (Grytviken)', 'of South Georgia and the South Sandwich Islands', '239', '', '', '', '??', 2, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', '', '', 0, '44', 'GS.png', NULL, NULL);
INSERT INTO `countries` VALUES (242, 'Suva', 'Fijian', '242', 'Fiji dollar', 'FJD', 'cent', '$', 2, 'Republic of Fiji', 'FJ', 'FJI', 'Fiji', '009', '054', 0, '679', 'FJ.png', NULL, NULL);
INSERT INTO `countries` VALUES (246, 'Helsinki', 'Finnish', '246', 'euro', 'EUR', 'cent', '???', 2, 'Republic of Finland', 'FI', 'FIN', 'Finland', '150', '154', 1, '358', 'FI.png', NULL, NULL);
INSERT INTO `countries` VALUES (248, 'Mariehamn', '??land Islander', '248', 'euro', 'EUR', 'cent', NULL, NULL, '??land Islands', 'AX', 'ALA', '??land Islands', '150', '154', 0, '358', NULL, NULL, NULL);
INSERT INTO `countries` VALUES (250, 'Paris', 'French', '250', 'euro', 'EUR', 'cent', '???', 2, 'French Republic', 'FR', 'FRA', 'France', '150', '155', 1, '33', 'FR.png', NULL, NULL);
INSERT INTO `countries` VALUES (254, 'Cayenne', 'Guianese', '254', 'euro', 'EUR', 'cent', '???', 2, 'French Guiana', 'GF', 'GUF', 'French Guiana', '019', '005', 0, '594', 'GF.png', NULL, NULL);
INSERT INTO `countries` VALUES (258, 'Papeete', 'Polynesian', '258', 'CFP franc', 'XPF', 'centime', 'XPF', 0, 'French Polynesia', 'PF', 'PYF', 'French Polynesia', '009', '061', 0, '689', 'PF.png', NULL, NULL);
INSERT INTO `countries` VALUES (260, 'Port-aux-Francais', 'of French Southern and Antarctic Lands', '260', 'euro', 'EUR', 'cent', '???', 2, 'French Southern and Antarctic Lands', 'TF', 'ATF', 'French Southern Territories', '', '', 0, '33', 'TF.png', NULL, NULL);
INSERT INTO `countries` VALUES (262, 'Djibouti', 'Djiboutian', '262', 'Djibouti franc', 'DJF', '', 'DJF', 0, 'Republic of Djibouti', 'DJ', 'DJI', 'Djibouti', '002', '014', 0, '253', 'DJ.png', NULL, NULL);
INSERT INTO `countries` VALUES (266, 'Libreville', 'Gabonese', '266', 'CFA franc (BEAC)', 'XAF', 'centime', 'FCF', 0, 'Gabonese Republic', 'GA', 'GAB', 'Gabon', '002', '017', 0, '241', 'GA.png', NULL, NULL);
INSERT INTO `countries` VALUES (268, 'Tbilisi', 'Georgian', '268', 'lari', 'GEL', 'tetri (inv.)', 'GEL', 2, 'Georgia', 'GE', 'GEO', 'Georgia', '142', '145', 0, '995', 'GE.png', NULL, NULL);
INSERT INTO `countries` VALUES (270, 'Banjul', 'Gambian', '270', 'dalasi (inv.)', 'GMD', 'butut', 'D', 2, 'Republic of the Gambia', 'GM', 'GMB', 'Gambia', '002', '011', 0, '220', 'GM.png', NULL, NULL);
INSERT INTO `countries` VALUES (275, NULL, 'Palestinian', '275', NULL, NULL, NULL, '???', 2, NULL, 'PS', 'PSE', 'Palestinian Territory, Occupied', '142', '145', 0, '970', 'PS.png', NULL, NULL);
INSERT INTO `countries` VALUES (276, 'Berlin', 'German', '276', 'euro', 'EUR', 'cent', '???', 2, 'Federal Republic of Germany', 'DE', 'DEU', 'Germany', '150', '155', 1, '49', 'DE.png', NULL, NULL);
INSERT INTO `countries` VALUES (288, 'Accra', 'Ghanaian', '288', 'Ghana cedi', 'GHS', 'pesewa', '??', 2, 'Republic of Ghana', 'GH', 'GHA', 'Ghana', '002', '011', 0, '233', 'GH.png', NULL, NULL);
INSERT INTO `countries` VALUES (292, 'Gibraltar', 'Gibraltarian', '292', 'Gibraltar pound', 'GIP', 'penny', '??', 2, 'Gibraltar', 'GI', 'GIB', 'Gibraltar', '150', '039', 0, '350', 'GI.png', NULL, NULL);
INSERT INTO `countries` VALUES (296, 'Tarawa', 'Kiribatian', '296', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Republic of Kiribati', 'KI', 'KIR', 'Kiribati', '009', '057', 0, '686', 'KI.png', NULL, NULL);
INSERT INTO `countries` VALUES (300, 'Athens', 'Greek', '300', 'euro', 'EUR', 'cent', '???', 2, 'Hellenic Republic', 'GR', 'GRC', 'Greece', '150', '039', 1, '30', 'GR.png', NULL, NULL);
INSERT INTO `countries` VALUES (304, 'Nuuk', 'Greenlander', '304', 'Danish krone', 'DKK', '??re (inv.)', 'kr', 2, 'Greenland', 'GL', 'GRL', 'Greenland', '019', '021', 0, '299', 'GL.png', NULL, NULL);
INSERT INTO `countries` VALUES (308, 'St George???s', 'Grenadian', '308', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Grenada', 'GD', 'GRD', 'Grenada', '019', '029', 0, '1', 'GD.png', NULL, NULL);
INSERT INTO `countries` VALUES (312, 'Basse Terre', 'Guadeloupean', '312', 'euro', 'EUR ', 'cent', '???', 2, 'Guadeloupe', 'GP', 'GLP', 'Guadeloupe', '019', '029', 0, '590', 'GP.png', NULL, NULL);
INSERT INTO `countries` VALUES (316, 'Aga??a (Hag??t??a)', 'Guamanian', '316', 'US dollar', 'USD', 'cent', '$', 2, 'Territory of Guam', 'GU', 'GUM', 'Guam', '009', '057', 0, '1', 'GU.png', NULL, NULL);
INSERT INTO `countries` VALUES (320, 'Guatemala City', 'Guatemalan', '320', 'quetzal (pl. quetzales)', 'GTQ', 'centavo', 'Q', 2, 'Republic of Guatemala', 'GT', 'GTM', 'Guatemala', '019', '013', 0, '502', 'GT.png', NULL, NULL);
INSERT INTO `countries` VALUES (324, 'Conakry', 'Guinean', '324', 'Guinean franc', 'GNF', '', 'GNF', 0, 'Republic of Guinea', 'GN', 'GIN', 'Guinea', '002', '011', 0, '224', 'GN.png', NULL, NULL);
INSERT INTO `countries` VALUES (328, 'Georgetown', 'Guyanese', '328', 'Guyana dollar', 'GYD', 'cent', '$', 2, 'Cooperative Republic of Guyana', 'GY', 'GUY', 'Guyana', '019', '005', 0, '592', 'GY.png', NULL, NULL);
INSERT INTO `countries` VALUES (332, 'Port-au-Prince', 'Haitian', '332', 'gourde', 'HTG', 'centime', 'G', 2, 'Republic of Haiti', 'HT', 'HTI', 'Haiti', '019', '029', 0, '509', 'HT.png', NULL, NULL);
INSERT INTO `countries` VALUES (334, 'Territory of Heard Island and McDonald Islands', 'of Territory of Heard Island and McDonald Islands', '334', '', '', '', '$', 2, 'Territory of Heard Island and McDonald Islands', 'HM', 'HMD', 'Heard Island and McDonald Islands', '', '', 0, '61', 'HM.png', NULL, NULL);
INSERT INTO `countries` VALUES (336, 'Vatican City', 'of the Holy See/of the Vatican', '336', 'euro', 'EUR', 'cent', '???', 2, 'the Holy See/ Vatican City State', 'VA', 'VAT', 'Holy See (Vatican City State)', '150', '039', 0, '39', 'VA.png', NULL, NULL);
INSERT INTO `countries` VALUES (340, 'Tegucigalpa', 'Honduran', '340', 'lempira', 'HNL', 'centavo', 'L', 2, 'Republic of Honduras', 'HN', 'HND', 'Honduras', '019', '013', 0, '504', 'HN.png', NULL, NULL);
INSERT INTO `countries` VALUES (344, '(HK3)', 'Hong Kong Chinese', '344', 'Hong Kong dollar', 'HKD', 'cent', '$', 2, 'Hong Kong Special Administrative Region of the People???s Republic of China (HK2)', 'HK', 'HKG', 'Hong Kong', '142', '030', 0, '852', 'HK.png', NULL, NULL);
INSERT INTO `countries` VALUES (348, 'Budapest', 'Hungarian', '348', 'forint (inv.)', 'HUF', '(fill??r (inv.))', 'Ft', 2, 'Republic of Hungary', 'HU', 'HUN', 'Hungary', '150', '151', 1, '36', 'HU.png', NULL, NULL);
INSERT INTO `countries` VALUES (352, 'Reykjavik', 'Icelander', '352', 'kr??na (pl. kr??nur)', 'ISK', '', 'kr', 0, 'Republic of Iceland', 'IS', 'ISL', 'Iceland', '150', '154', 0, '354', 'IS.png', NULL, NULL);
INSERT INTO `countries` VALUES (356, 'New Delhi', 'Indian', '356', 'Indian rupee', 'INR', 'paisa', '???', 2, 'Republic of India', 'IN', 'IND', 'India', '142', '034', 0, '91', 'IN.png', NULL, NULL);
INSERT INTO `countries` VALUES (360, 'Jakarta', 'Indonesian', '360', 'Indonesian rupiah (inv.)', 'IDR', 'sen (inv.)', 'Rp', 2, 'Republic of Indonesia', 'ID', 'IDN', 'Indonesia', '142', '035', 0, '62', 'ID.png', NULL, NULL);
INSERT INTO `countries` VALUES (364, 'Tehran', 'Iranian', '364', 'Iranian rial', 'IRR', '(dinar) (IR1)', '???', 2, 'Islamic Republic of Iran', 'IR', 'IRN', 'Iran, Islamic Republic of', '142', '034', 0, '98', 'IR.png', NULL, NULL);
INSERT INTO `countries` VALUES (368, 'Baghdad', 'Iraqi', '368', 'Iraqi dinar', 'IQD', 'fils (inv.)', 'IQD', 3, 'Republic of Iraq', 'IQ', 'IRQ', 'Iraq', '142', '145', 0, '964', 'IQ.png', NULL, NULL);
INSERT INTO `countries` VALUES (372, 'Dublin', 'Irish', '372', 'euro', 'EUR', 'cent', '???', 2, 'Ireland (IE1)', 'IE', 'IRL', 'Ireland', '150', '154', 1, '353', 'IE.png', NULL, NULL);
INSERT INTO `countries` VALUES (376, '(IL1)', 'Israeli', '376', 'shekel', 'ILS', 'agora', '???', 2, 'State of Israel', 'IL', 'ISR', 'Israel', '142', '145', 0, '972', 'IL.png', NULL, NULL);
INSERT INTO `countries` VALUES (380, 'Rome', 'Italian', '380', 'euro', 'EUR', 'cent', '???', 2, 'Italian Republic', 'IT', 'ITA', 'Italy', '150', '039', 1, '39', 'IT.png', NULL, NULL);
INSERT INTO `countries` VALUES (384, 'Yamoussoukro (CI1)', 'Ivorian', '384', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of C??te d???Ivoire', 'CI', 'CIV', 'C??te d\'Ivoire', '002', '011', 0, '225', 'CI.png', NULL, NULL);
INSERT INTO `countries` VALUES (388, 'Kingston', 'Jamaican', '388', 'Jamaica dollar', 'JMD', 'cent', '$', 2, 'Jamaica', 'JM', 'JAM', 'Jamaica', '019', '029', 0, '1', 'JM.png', NULL, NULL);
INSERT INTO `countries` VALUES (392, 'Tokyo', 'Japanese', '392', 'yen (inv.)', 'JPY', '(sen (inv.)) (JP1)', '??', 0, 'Japan', 'JP', 'JPN', 'Japan', '142', '030', 0, '81', 'JP.png', NULL, NULL);
INSERT INTO `countries` VALUES (398, 'Astana', 'Kazakh', '398', 'tenge (inv.)', 'KZT', 'tiyn', '????', 2, 'Republic of Kazakhstan', 'KZ', 'KAZ', 'Kazakhstan', '142', '143', 0, '7', 'KZ.png', NULL, NULL);
INSERT INTO `countries` VALUES (400, 'Amman', 'Jordanian', '400', 'Jordanian dinar', 'JOD', '100 qirsh', 'JOD', 2, 'Hashemite Kingdom of Jordan', 'JO', 'JOR', 'Jordan', '142', '145', 0, '962', 'JO.png', NULL, NULL);
INSERT INTO `countries` VALUES (404, 'Nairobi', 'Kenyan', '404', 'Kenyan shilling', 'KES', 'cent', 'KES', 2, 'Republic of Kenya', 'KE', 'KEN', 'Kenya', '002', '014', 0, '254', 'KE.png', NULL, NULL);
INSERT INTO `countries` VALUES (408, 'Pyongyang', 'North Korean', '408', 'North Korean won (inv.)', 'KPW', 'chun (inv.)', '???', 2, 'Democratic People???s Republic of Korea', 'KP', 'PRK', 'Korea, Democratic People\'s Republic of', '142', '030', 0, '850', 'KP.png', NULL, NULL);
INSERT INTO `countries` VALUES (410, 'Seoul', 'South Korean', '410', 'South Korean won (inv.)', 'KRW', '(chun (inv.))', '???', 0, 'Republic of Korea', 'KR', 'KOR', 'Korea, Republic of', '142', '030', 0, '82', 'KR.png', NULL, NULL);
INSERT INTO `countries` VALUES (414, 'Kuwait City', 'Kuwaiti', '414', 'Kuwaiti dinar', 'KWD', 'fils (inv.)', 'KWD', 3, 'State of Kuwait', 'KW', 'KWT', 'Kuwait', '142', '145', 0, '965', 'KW.png', NULL, NULL);
INSERT INTO `countries` VALUES (417, 'Bishkek', 'Kyrgyz', '417', 'som', 'KGS', 'tyiyn', '????', 2, 'Kyrgyz Republic', 'KG', 'KGZ', 'Kyrgyzstan', '142', '143', 0, '996', 'KG.png', NULL, NULL);
INSERT INTO `countries` VALUES (418, 'Vientiane', 'Lao', '418', 'kip (inv.)', 'LAK', '(at (inv.))', '???', 0, 'Lao People???s Democratic Republic', 'LA', 'LAO', 'Lao People\'s Democratic Republic', '142', '035', 0, '856', 'LA.png', NULL, NULL);
INSERT INTO `countries` VALUES (422, 'Beirut', 'Lebanese', '422', 'Lebanese pound', 'LBP', '(piastre)', '??', 2, 'Lebanese Republic', 'LB', 'LBN', 'Lebanon', '142', '145', 0, '961', 'LB.png', NULL, NULL);
INSERT INTO `countries` VALUES (426, 'Maseru', 'Basotho', '426', 'loti (pl. maloti)', 'LSL', 'sente', 'L', 2, 'Kingdom of Lesotho', 'LS', 'LSO', 'Lesotho', '002', '018', 0, '266', 'LS.png', NULL, NULL);
INSERT INTO `countries` VALUES (428, 'Riga', 'Latvian', '428', 'euro', 'EUR', 'cent', 'Ls', 2, 'Republic of Latvia', 'LV', 'LVA', 'Latvia', '150', '154', 1, '371', 'LV.png', NULL, NULL);
INSERT INTO `countries` VALUES (430, 'Monrovia', 'Liberian', '430', 'Liberian dollar', 'LRD', 'cent', '$', 2, 'Republic of Liberia', 'LR', 'LBR', 'Liberia', '002', '011', 0, '231', 'LR.png', NULL, NULL);
INSERT INTO `countries` VALUES (434, 'Tripoli', 'Libyan', '434', 'Libyan dinar', 'LYD', 'dirham', 'LYD', 3, 'Socialist People???s Libyan Arab Jamahiriya', 'LY', 'LBY', 'Libya', '002', '015', 0, '218', 'LY.png', NULL, NULL);
INSERT INTO `countries` VALUES (438, 'Vaduz', 'Liechtensteiner', '438', 'Swiss franc', 'CHF', 'centime', 'CHF', 2, 'Principality of Liechtenstein', 'LI', 'LIE', 'Liechtenstein', '150', '155', 0, '423', 'LI.png', NULL, NULL);
INSERT INTO `countries` VALUES (440, 'Vilnius', 'Lithuanian', '440', 'euro', 'EUR', 'cent', 'Lt', 2, 'Republic of Lithuania', 'LT', 'LTU', 'Lithuania', '150', '154', 1, '370', 'LT.png', NULL, NULL);
INSERT INTO `countries` VALUES (442, 'Luxembourg', 'Luxembourger', '442', 'euro', 'EUR', 'cent', '???', 2, 'Grand Duchy of Luxembourg', 'LU', 'LUX', 'Luxembourg', '150', '155', 1, '352', 'LU.png', NULL, NULL);
INSERT INTO `countries` VALUES (446, 'Macao (MO3)', 'Macanese', '446', 'pataca', 'MOP', 'avo', 'MOP', 2, 'Macao Special Administrative Region of the People???s Republic of China (MO2)', 'MO', 'MAC', 'Macao', '142', '030', 0, '853', 'MO.png', NULL, NULL);
INSERT INTO `countries` VALUES (450, 'Antananarivo', 'Malagasy', '450', 'ariary', 'MGA', 'iraimbilanja (inv.)', 'MGA', 2, 'Republic of Madagascar', 'MG', 'MDG', 'Madagascar', '002', '014', 0, '261', 'MG.png', NULL, NULL);
INSERT INTO `countries` VALUES (454, 'Lilongwe', 'Malawian', '454', 'Malawian kwacha (inv.)', 'MWK', 'tambala (inv.)', 'MK', 2, 'Republic of Malawi', 'MW', 'MWI', 'Malawi', '002', '014', 0, '265', 'MW.png', NULL, NULL);
INSERT INTO `countries` VALUES (458, 'Kuala Lumpur (MY1)', 'Malaysian', '458', 'ringgit (inv.)', 'MYR', 'sen (inv.)', 'RM', 2, 'Malaysia', 'MY', 'MYS', 'Malaysia', '142', '035', 0, '60', 'MY.png', NULL, NULL);
INSERT INTO `countries` VALUES (462, 'Mal??', 'Maldivian', '462', 'rufiyaa', 'MVR', 'laari (inv.)', 'Rf', 2, 'Republic of Maldives', 'MV', 'MDV', 'Maldives', '142', '034', 0, '960', 'MV.png', NULL, NULL);
INSERT INTO `countries` VALUES (466, 'Bamako', 'Malian', '466', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Mali', 'ML', 'MLI', 'Mali', '002', '011', 0, '223', 'ML.png', NULL, NULL);
INSERT INTO `countries` VALUES (470, 'Valletta', 'Maltese', '470', 'euro', 'EUR', 'cent', 'MTL', 2, 'Republic of Malta', 'MT', 'MLT', 'Malta', '150', '039', 1, '356', 'MT.png', NULL, NULL);
INSERT INTO `countries` VALUES (474, 'Fort-de-France', 'Martinican', '474', 'euro', 'EUR', 'cent', '???', 2, 'Martinique', 'MQ', 'MTQ', 'Martinique', '019', '029', 0, '596', 'MQ.png', NULL, NULL);
INSERT INTO `countries` VALUES (478, 'Nouakchott', 'Mauritanian', '478', 'ouguiya', 'MRO', 'khoum', 'UM', 2, 'Islamic Republic of Mauritania', 'MR', 'MRT', 'Mauritania', '002', '011', 0, '222', 'MR.png', NULL, NULL);
INSERT INTO `countries` VALUES (480, 'Port Louis', 'Mauritian', '480', 'Mauritian rupee', 'MUR', 'cent', '???', 2, 'Republic of Mauritius', 'MU', 'MUS', 'Mauritius', '002', '014', 0, '230', 'MU.png', NULL, NULL);
INSERT INTO `countries` VALUES (484, 'Mexico City', 'Mexican', '484', 'Mexican peso', 'MXN', 'centavo', '$', 2, 'United Mexican States', 'MX', 'MEX', 'Mexico', '019', '013', 0, '52', 'MX.png', NULL, NULL);
INSERT INTO `countries` VALUES (492, 'Monaco', 'Monegasque', '492', 'euro', 'EUR', 'cent', '???', 2, 'Principality of Monaco', 'MC', 'MCO', 'Monaco', '150', '155', 0, '377', 'MC.png', NULL, NULL);
INSERT INTO `countries` VALUES (496, 'Ulan Bator', 'Mongolian', '496', 'tugrik', 'MNT', 'm??ng?? (inv.)', '???', 2, 'Mongolia', 'MN', 'MNG', 'Mongolia', '142', '030', 0, '976', 'MN.png', NULL, NULL);
INSERT INTO `countries` VALUES (498, 'Chisinau', 'Moldovan', '498', 'Moldovan leu (pl. lei)', 'MDL', 'ban', 'MDL', 2, 'Republic of Moldova', 'MD', 'MDA', 'Moldova, Republic of', '150', '151', 0, '373', 'MD.png', NULL, NULL);
INSERT INTO `countries` VALUES (499, 'Podgorica', 'Montenegrin', '499', 'euro', 'EUR', 'cent', '???', 2, 'Montenegro', 'ME', 'MNE', 'Montenegro', '150', '039', 0, '382', 'ME.png', NULL, NULL);
INSERT INTO `countries` VALUES (500, 'Plymouth (MS2)', 'Montserratian', '500', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Montserrat', 'MS', 'MSR', 'Montserrat', '019', '029', 0, '1', 'MS.png', NULL, NULL);
INSERT INTO `countries` VALUES (504, 'Rabat', 'Moroccan', '504', 'Moroccan dirham', 'MAD', 'centime', 'MAD', 2, 'Kingdom of Morocco', 'MA', 'MAR', 'Morocco', '002', '015', 0, '212', 'MA.png', NULL, NULL);
INSERT INTO `countries` VALUES (508, 'Maputo', 'Mozambican', '508', 'metical', 'MZN', 'centavo', 'MT', 2, 'Republic of Mozambique', 'MZ', 'MOZ', 'Mozambique', '002', '014', 0, '258', 'MZ.png', NULL, NULL);
INSERT INTO `countries` VALUES (512, 'Muscat', 'Omani', '512', 'Omani rial', 'OMR', 'baiza', '???', 3, 'Sultanate of Oman', 'OM', 'OMN', 'Oman', '142', '145', 0, '968', 'OM.png', NULL, NULL);
INSERT INTO `countries` VALUES (516, 'Windhoek', 'Namibian', '516', 'Namibian dollar', 'NAD', 'cent', '$', 2, 'Republic of Namibia', 'NA', 'NAM', 'Namibia', '002', '018', 0, '264', 'NA.png', NULL, NULL);
INSERT INTO `countries` VALUES (520, 'Yaren', 'Nauruan', '520', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Republic of Nauru', 'NR', 'NRU', 'Nauru', '009', '057', 0, '674', 'NR.png', NULL, NULL);
INSERT INTO `countries` VALUES (524, 'Kathmandu', 'Nepalese', '524', 'Nepalese rupee', 'NPR', 'paisa (inv.)', '???', 2, 'Nepal', 'NP', 'NPL', 'Nepal', '142', '034', 0, '977', 'NP.png', NULL, NULL);
INSERT INTO `countries` VALUES (528, 'Amsterdam (NL2)', 'Dutch', '528', 'euro', 'EUR', 'cent', '???', 2, 'Kingdom of the Netherlands', 'NL', 'NLD', 'Netherlands', '150', '155', 1, '31', 'NL.png', NULL, NULL);
INSERT INTO `countries` VALUES (531, 'Willemstad', 'Cura??aoan', '531', 'Netherlands Antillean guilder (CW1)', 'ANG', 'cent', NULL, NULL, 'Cura??ao', 'CW', 'CUW', 'Cura??ao', '019', '029', 0, '599', NULL, NULL, NULL);
INSERT INTO `countries` VALUES (533, 'Oranjestad', 'Aruban', '533', 'Aruban guilder', 'AWG', 'cent', '??', 2, 'Aruba', 'AW', 'ABW', 'Aruba', '019', '029', 0, '297', 'AW.png', NULL, NULL);
INSERT INTO `countries` VALUES (534, 'Philipsburg', 'Sint Maartener', '534', 'Netherlands Antillean guilder (SX1)', 'ANG', 'cent', NULL, NULL, 'Sint Maarten', 'SX', 'SXM', 'Sint Maarten (Dutch part)', '019', '029', 0, '721', NULL, NULL, NULL);
INSERT INTO `countries` VALUES (535, NULL, 'of Bonaire, Sint Eustatius and Saba', '535', 'US dollar', 'USD', 'cent', NULL, NULL, NULL, 'BQ', 'BES', 'Bonaire, Sint Eustatius and Saba', '019', '029', 0, '599', NULL, NULL, NULL);
INSERT INTO `countries` VALUES (540, 'Noum??a', 'New Caledonian', '540', 'CFP franc', 'XPF', 'centime', 'XPF', 0, 'New Caledonia', 'NC', 'NCL', 'New Caledonia', '009', '054', 0, '687', 'NC.png', NULL, NULL);
INSERT INTO `countries` VALUES (548, 'Port Vila', 'Vanuatuan', '548', 'vatu (inv.)', 'VUV', '', 'Vt', 0, 'Republic of Vanuatu', 'VU', 'VUT', 'Vanuatu', '009', '054', 0, '678', 'VU.png', NULL, NULL);
INSERT INTO `countries` VALUES (554, 'Wellington', 'New Zealander', '554', 'New Zealand dollar', 'NZD', 'cent', '$', 2, 'New Zealand', 'NZ', 'NZL', 'New Zealand', '009', '053', 0, '64', 'NZ.png', NULL, NULL);
INSERT INTO `countries` VALUES (558, 'Managua', 'Nicaraguan', '558', 'c??rdoba oro', 'NIO', 'centavo', 'C$', 2, 'Republic of Nicaragua', 'NI', 'NIC', 'Nicaragua', '019', '013', 0, '505', 'NI.png', NULL, NULL);
INSERT INTO `countries` VALUES (562, 'Niamey', 'Nigerien', '562', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Niger', 'NE', 'NER', 'Niger', '002', '011', 0, '227', 'NE.png', NULL, NULL);
INSERT INTO `countries` VALUES (566, 'Abuja', 'Nigerian', '566', 'naira (inv.)', 'NGN', 'kobo (inv.)', '???', 2, 'Federal Republic of Nigeria', 'NG', 'NGA', 'Nigeria', '002', '011', 0, '234', 'NG.png', NULL, NULL);
INSERT INTO `countries` VALUES (570, 'Alofi', 'Niuean', '570', 'New Zealand dollar', 'NZD', 'cent', '$', 2, 'Niue', 'NU', 'NIU', 'Niue', '009', '061', 0, '683', 'NU.png', NULL, NULL);
INSERT INTO `countries` VALUES (574, 'Kingston', 'Norfolk Islander', '574', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Territory of Norfolk Island', 'NF', 'NFK', 'Norfolk Island', '009', '053', 0, '672', 'NF.png', NULL, NULL);
INSERT INTO `countries` VALUES (578, 'Oslo', 'Norwegian', '578', 'Norwegian krone (pl. kroner)', 'NOK', '??re (inv.)', 'kr', 2, 'Kingdom of Norway', 'NO', 'NOR', 'Norway', '150', '154', 0, '47', 'NO.png', NULL, NULL);
INSERT INTO `countries` VALUES (580, 'Saipan', 'Northern Mariana Islander', '580', 'US dollar', 'USD', 'cent', '$', 2, 'Commonwealth of the Northern Mariana Islands', 'MP', 'MNP', 'Northern Mariana Islands', '009', '057', 0, '1', 'MP.png', NULL, NULL);
INSERT INTO `countries` VALUES (581, 'United States Minor Outlying Islands', 'of United States Minor Outlying Islands', '581', 'US dollar', 'USD', 'cent', '$', 2, 'United States Minor Outlying Islands', 'UM', 'UMI', 'United States Minor Outlying Islands', '', '', 0, '1', 'UM.png', NULL, NULL);
INSERT INTO `countries` VALUES (583, 'Palikir', 'Micronesian', '583', 'US dollar', 'USD', 'cent', '$', 2, 'Federated States of Micronesia', 'FM', 'FSM', 'Micronesia, Federated States of', '009', '057', 0, '691', 'FM.png', NULL, NULL);
INSERT INTO `countries` VALUES (584, 'Majuro', 'Marshallese', '584', 'US dollar', 'USD', 'cent', '$', 2, 'Republic of the Marshall Islands', 'MH', 'MHL', 'Marshall Islands', '009', '057', 0, '692', 'MH.png', NULL, NULL);
INSERT INTO `countries` VALUES (585, 'Melekeok', 'Palauan', '585', 'US dollar', 'USD', 'cent', '$', 2, 'Republic of Palau', 'PW', 'PLW', 'Palau', '009', '057', 0, '680', 'PW.png', NULL, NULL);
INSERT INTO `countries` VALUES (586, 'Islamabad', 'Pakistani', '586', 'Pakistani rupee', 'PKR', 'paisa', '???', 2, 'Islamic Republic of Pakistan', 'PK', 'PAK', 'Pakistan', '142', '034', 0, '92', 'PK.png', NULL, NULL);
INSERT INTO `countries` VALUES (591, 'Panama City', 'Panamanian', '591', 'balboa', 'PAB', 'cent??simo', 'B/.', 2, 'Republic of Panama', 'PA', 'PAN', 'Panama', '019', '013', 0, '507', 'PA.png', NULL, NULL);
INSERT INTO `countries` VALUES (598, 'Port Moresby', 'Papua New Guinean', '598', 'kina (inv.)', 'PGK', 'toea (inv.)', 'PGK', 2, 'Independent State of Papua New Guinea', 'PG', 'PNG', 'Papua New Guinea', '009', '054', 0, '675', 'PG.png', NULL, NULL);
INSERT INTO `countries` VALUES (600, 'Asunci??n', 'Paraguayan', '600', 'guaran??', 'PYG', 'c??ntimo', 'Gs', 0, 'Republic of Paraguay', 'PY', 'PRY', 'Paraguay', '019', '005', 0, '595', 'PY.png', NULL, NULL);
INSERT INTO `countries` VALUES (604, 'Lima', 'Peruvian', '604', 'new sol', 'PEN', 'c??ntimo', 'S/.', 2, 'Republic of Peru', 'PE', 'PER', 'Peru', '019', '005', 0, '51', 'PE.png', NULL, NULL);
INSERT INTO `countries` VALUES (608, 'Manila', 'Filipino', '608', 'Philippine peso', 'PHP', 'centavo', 'Php', 2, 'Republic of the Philippines', 'PH', 'PHL', 'Philippines', '142', '035', 0, '63', 'PH.png', NULL, NULL);
INSERT INTO `countries` VALUES (612, 'Adamstown', 'Pitcairner', '612', 'New Zealand dollar', 'NZD', 'cent', '$', 2, 'Pitcairn Islands', 'PN', 'PCN', 'Pitcairn', '009', '061', 0, '649', 'PN.png', NULL, NULL);
INSERT INTO `countries` VALUES (616, 'Warsaw', 'Polish', '616', 'zloty', 'PLN', 'grosz (pl. groszy)', 'z??', 2, 'Republic of Poland', 'PL', 'POL', 'Poland', '150', '151', 1, '48', 'PL.png', NULL, NULL);
INSERT INTO `countries` VALUES (620, 'Lisbon', 'Portuguese', '620', 'euro', 'EUR', 'cent', '???', 2, 'Portuguese Republic', 'PT', 'PRT', 'Portugal', '150', '039', 1, '351', 'PT.png', NULL, NULL);
INSERT INTO `countries` VALUES (624, 'Bissau', 'Guinea-Bissau national', '624', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Guinea-Bissau', 'GW', 'GNB', 'Guinea-Bissau', '002', '011', 0, '245', 'GW.png', NULL, NULL);
INSERT INTO `countries` VALUES (626, 'Dili', 'East Timorese', '626', 'US dollar', 'USD', 'cent', '$', 2, 'Democratic Republic of East Timor', 'TL', 'TLS', 'Timor-Leste', '142', '035', 0, '670', 'TL.png', NULL, NULL);
INSERT INTO `countries` VALUES (630, 'San Juan', 'Puerto Rican', '630', 'US dollar', 'USD', 'cent', '$', 2, 'Commonwealth of Puerto Rico', 'PR', 'PRI', 'Puerto Rico', '019', '029', 0, '1', 'PR.png', NULL, NULL);
INSERT INTO `countries` VALUES (634, 'Doha', 'Qatari', '634', 'Qatari riyal', 'QAR', 'dirham', '???', 2, 'State of Qatar', 'QA', 'QAT', 'Qatar', '142', '145', 0, '974', 'QA.png', NULL, NULL);
INSERT INTO `countries` VALUES (638, 'Saint-Denis', 'Reunionese', '638', 'euro', 'EUR', 'cent', '???', 2, 'R??union', 'RE', 'REU', 'R??union', '002', '014', 0, '262', 'RE.png', NULL, NULL);
INSERT INTO `countries` VALUES (642, 'Bucharest', 'Romanian', '642', 'Romanian leu (pl. lei)', 'RON', 'ban (pl. bani)', 'lei', 2, 'Romania', 'RO', 'ROU', 'Romania', '150', '151', 1, '40', 'RO.png', NULL, NULL);
INSERT INTO `countries` VALUES (643, 'Moscow', 'Russian', '643', 'Russian rouble', 'RUB', 'kopek', '??????', 2, 'Russian Federation', 'RU', 'RUS', 'Russian Federation', '150', '151', 0, '7', 'RU.png', NULL, NULL);
INSERT INTO `countries` VALUES (646, 'Kigali', 'Rwandan; Rwandese', '646', 'Rwandese franc', 'RWF', 'centime', 'RWF', 0, 'Republic of Rwanda', 'RW', 'RWA', 'Rwanda', '002', '014', 0, '250', 'RW.png', NULL, NULL);
INSERT INTO `countries` VALUES (652, 'Gustavia', 'of Saint Barth??lemy', '652', 'euro', 'EUR', 'cent', NULL, NULL, 'Collectivity of Saint Barth??lemy', 'BL', 'BLM', 'Saint Barth??lemy', '019', '029', 0, '590', NULL, NULL, NULL);
INSERT INTO `countries` VALUES (654, 'Jamestown', 'Saint Helenian', '654', 'Saint Helena pound', 'SHP', 'penny', '??', 2, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', 'SHN', 'Saint Helena, Ascension and Tristan da Cunha', '002', '011', 0, '290', 'SH.png', NULL, NULL);
INSERT INTO `countries` VALUES (659, 'Basseterre', 'Kittsian; Nevisian', '659', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Federation of Saint Kitts and Nevis', 'KN', 'KNA', 'Saint Kitts and Nevis', '019', '029', 0, '1', 'KN.png', NULL, NULL);
INSERT INTO `countries` VALUES (660, 'The Valley', 'Anguillan', '660', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Anguilla', 'AI', 'AIA', 'Anguilla', '019', '029', 0, '1', 'AI.png', NULL, NULL);
INSERT INTO `countries` VALUES (662, 'Castries', 'Saint Lucian', '662', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Saint Lucia', 'LC', 'LCA', 'Saint Lucia', '019', '029', 0, '1', 'LC.png', NULL, NULL);
INSERT INTO `countries` VALUES (663, 'Marigot', 'of Saint Martin', '663', 'euro', 'EUR', 'cent', NULL, NULL, 'Collectivity of Saint Martin', 'MF', 'MAF', 'Saint Martin (French part)', '019', '029', 0, '590', NULL, NULL, NULL);
INSERT INTO `countries` VALUES (666, 'Saint-Pierre', 'St-Pierrais; Miquelonnais', '666', 'euro', 'EUR', 'cent', '???', 2, 'Territorial Collectivity of Saint Pierre and Miquelon', 'PM', 'SPM', 'Saint Pierre and Miquelon', '019', '021', 0, '508', 'PM.png', NULL, NULL);
INSERT INTO `countries` VALUES (670, 'Kingstown', 'Vincentian', '670', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 'Saint Vincent and the Grenadines', '019', '029', 0, '1', 'VC.png', NULL, NULL);
INSERT INTO `countries` VALUES (674, 'San Marino', 'San Marinese', '674', 'euro', 'EUR ', 'cent', '???', 2, 'Republic of San Marino', 'SM', 'SMR', 'San Marino', '150', '039', 0, '378', 'SM.png', NULL, NULL);
INSERT INTO `countries` VALUES (678, 'S??o Tom??', 'S??o Tom??an', '678', 'dobra', 'STD', 'centavo', 'Db', 2, 'Democratic Republic of S??o Tom?? and Pr??ncipe', 'ST', 'STP', 'Sao Tome and Principe', '002', '017', 0, '239', 'ST.png', NULL, NULL);
INSERT INTO `countries` VALUES (682, 'Riyadh', 'Saudi Arabian', '682', 'riyal', 'SAR', 'halala', '???', 2, 'Kingdom of Saudi Arabia', 'SA', 'SAU', 'Saudi Arabia', '142', '145', 0, '966', 'SA.png', NULL, NULL);
INSERT INTO `countries` VALUES (686, 'Dakar', 'Senegalese', '686', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Senegal', 'SN', 'SEN', 'Senegal', '002', '011', 0, '221', 'SN.png', NULL, NULL);
INSERT INTO `countries` VALUES (688, 'Belgrade', 'Serb', '688', 'Serbian dinar', 'RSD', 'para (inv.)', NULL, NULL, 'Republic of Serbia', 'RS', 'SRB', 'Serbia', '150', '039', 0, '381', NULL, NULL, NULL);
INSERT INTO `countries` VALUES (690, 'Victoria', 'Seychellois', '690', 'Seychelles rupee', 'SCR', 'cent', '???', 2, 'Republic of Seychelles', 'SC', 'SYC', 'Seychelles', '002', '014', 0, '248', 'SC.png', NULL, NULL);
INSERT INTO `countries` VALUES (694, 'Freetown', 'Sierra Leonean', '694', 'leone', 'SLL', 'cent', 'Le', 2, 'Republic of Sierra Leone', 'SL', 'SLE', 'Sierra Leone', '002', '011', 0, '232', 'SL.png', NULL, NULL);
INSERT INTO `countries` VALUES (702, 'Singapore', 'Singaporean', '702', 'Singapore dollar', 'SGD', 'cent', '$', 2, 'Republic of Singapore', 'SG', 'SGP', 'Singapore', '142', '035', 0, '65', 'SG.png', NULL, NULL);
INSERT INTO `countries` VALUES (703, 'Bratislava', 'Slovak', '703', 'euro', 'EUR', 'cent', 'Sk', 2, 'Slovak Republic', 'SK', 'SVK', 'Slovakia', '150', '151', 1, '421', 'SK.png', NULL, NULL);
INSERT INTO `countries` VALUES (704, 'Hanoi', 'Vietnamese', '704', 'dong', 'VND', '(10 h??o', '???', 2, 'Socialist Republic of Vietnam', 'VN', 'VNM', 'Viet Nam', '142', '035', 0, '84', 'VN.png', NULL, NULL);
INSERT INTO `countries` VALUES (705, 'Ljubljana', 'Slovene', '705', 'euro', 'EUR', 'cent', '???', 2, 'Republic of Slovenia', 'SI', 'SVN', 'Slovenia', '150', '039', 1, '386', 'SI.png', NULL, NULL);
INSERT INTO `countries` VALUES (706, 'Mogadishu', 'Somali', '706', 'Somali shilling', 'SOS', 'cent', 'S', 2, 'Somali Republic', 'SO', 'SOM', 'Somalia', '002', '014', 0, '252', 'SO.png', NULL, NULL);
INSERT INTO `countries` VALUES (710, 'Pretoria (ZA1)', 'South African', '710', 'rand', 'ZAR', 'cent', 'R', 2, 'Republic of South Africa', 'ZA', 'ZAF', 'South Africa', '002', '018', 0, '27', 'ZA.png', NULL, NULL);
INSERT INTO `countries` VALUES (716, 'Harare', 'Zimbabwean', '716', 'Zimbabwe dollar (ZW1)', 'ZWL', 'cent', 'Z$', 2, 'Republic of Zimbabwe', 'ZW', 'ZWE', 'Zimbabwe', '002', '014', 0, '263', 'ZW.png', NULL, NULL);
INSERT INTO `countries` VALUES (724, 'Madrid', 'Spaniard', '724', 'euro', 'EUR', 'cent', '???', 2, 'Kingdom of Spain', 'ES', 'ESP', 'Spain', '150', '039', 1, '34', 'ES.png', NULL, NULL);
INSERT INTO `countries` VALUES (728, 'Juba', 'South Sudanese', '728', 'South Sudanese pound', 'SSP', 'piaster', NULL, NULL, 'Republic of South Sudan', 'SS', 'SSD', 'South Sudan', '002', '015', 0, '211', NULL, NULL, NULL);
INSERT INTO `countries` VALUES (729, 'Khartoum', 'Sudanese', '729', 'Sudanese pound', 'SDG', 'piastre', NULL, NULL, 'Republic of the Sudan', 'SD', 'SDN', 'Sudan', '002', '015', 0, '249', NULL, NULL, NULL);
INSERT INTO `countries` VALUES (732, 'Al aaiun', 'Sahrawi', '732', 'Moroccan dirham', 'MAD', 'centime', 'MAD', 2, 'Western Sahara', 'EH', 'ESH', 'Western Sahara', '002', '015', 0, '212', 'EH.png', NULL, NULL);
INSERT INTO `countries` VALUES (740, 'Paramaribo', 'Surinamese', '740', 'Surinamese dollar', 'SRD', 'cent', '$', 2, 'Republic of Suriname', 'SR', 'SUR', 'Suriname', '019', '005', 0, '597', 'SR.png', NULL, NULL);
INSERT INTO `countries` VALUES (744, 'Longyearbyen', 'of Svalbard', '744', 'Norwegian krone (pl. kroner)', 'NOK', '??re (inv.)', 'kr', 2, 'Svalbard and Jan Mayen', 'SJ', 'SJM', 'Svalbard and Jan Mayen', '150', '154', 0, '47', 'SJ.png', NULL, NULL);
INSERT INTO `countries` VALUES (748, 'Mbabane', 'Swazi', '748', 'lilangeni', 'SZL', 'cent', 'SZL', 2, 'Kingdom of Swaziland', 'SZ', 'SWZ', 'Swaziland', '002', '018', 0, '268', 'SZ.png', NULL, NULL);
INSERT INTO `countries` VALUES (752, 'Stockholm', 'Swedish', '752', 'krona (pl. kronor)', 'SEK', '??re (inv.)', 'kr', 2, 'Kingdom of Sweden', 'SE', 'SWE', 'Sweden', '150', '154', 1, '46', 'SE.png', NULL, NULL);
INSERT INTO `countries` VALUES (756, 'Berne', 'Swiss', '756', 'Swiss franc', 'CHF', 'centime', 'CHF', 2, 'Swiss Confederation', 'CH', 'CHE', 'Switzerland', '150', '155', 0, '41', 'CH.png', NULL, NULL);
INSERT INTO `countries` VALUES (760, 'Damascus', 'Syrian', '760', 'Syrian pound', 'SYP', 'piastre', '??', 2, 'Syrian Arab Republic', 'SY', 'SYR', 'Syrian Arab Republic', '142', '145', 0, '963', 'SY.png', NULL, NULL);
INSERT INTO `countries` VALUES (762, 'Dushanbe', 'Tajik', '762', 'somoni', 'TJS', 'diram', 'TJS', 2, 'Republic of Tajikistan', 'TJ', 'TJK', 'Tajikistan', '142', '143', 0, '992', 'TJ.png', NULL, NULL);
INSERT INTO `countries` VALUES (764, 'Bangkok', 'Thai', '764', 'baht (inv.)', 'THB', 'satang (inv.)', '???', 2, 'Kingdom of Thailand', 'TH', 'THA', 'Thailand', '142', '035', 0, '66', 'TH.png', NULL, NULL);
INSERT INTO `countries` VALUES (768, 'Lom??', 'Togolese', '768', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Togolese Republic', 'TG', 'TGO', 'Togo', '002', '011', 0, '228', 'TG.png', NULL, NULL);
INSERT INTO `countries` VALUES (772, '(TK2)', 'Tokelauan', '772', 'New Zealand dollar', 'NZD', 'cent', '$', 2, 'Tokelau', 'TK', 'TKL', 'Tokelau', '009', '061', 0, '690', 'TK.png', NULL, NULL);
INSERT INTO `countries` VALUES (776, 'Nuku???alofa', 'Tongan', '776', 'pa???anga (inv.)', 'TOP', 'seniti (inv.)', 'T$', 2, 'Kingdom of Tonga', 'TO', 'TON', 'Tonga', '009', '061', 0, '676', 'TO.png', NULL, NULL);
INSERT INTO `countries` VALUES (780, 'Port of Spain', 'Trinidadian; Tobagonian', '780', 'Trinidad and Tobago dollar', 'TTD', 'cent', 'TT$', 2, 'Republic of Trinidad and Tobago', 'TT', 'TTO', 'Trinidad and Tobago', '019', '029', 0, '1', 'TT.png', NULL, NULL);
INSERT INTO `countries` VALUES (784, 'Abu Dhabi', 'Emirian', '784', 'UAE dirham', 'AED', 'fils (inv.)', 'AED', 2, 'United Arab Emirates', 'AE', 'ARE', 'United Arab Emirates', '142', '145', 0, '971', 'AE.png', NULL, NULL);
INSERT INTO `countries` VALUES (788, 'Tunis', 'Tunisian', '788', 'Tunisian dinar', 'TND', 'millime', 'TND', 3, 'Republic of Tunisia', 'TN', 'TUN', 'Tunisia', '002', '015', 0, '216', 'TN.png', NULL, NULL);
INSERT INTO `countries` VALUES (792, 'Ankara', 'Turk', '792', 'Turkish lira (inv.)', 'TRY', 'kurus (inv.)', '???', 2, 'Republic of Turkey', 'TR', 'TUR', 'Turkey', '142', '145', 0, '90', 'TR.png', NULL, NULL);
INSERT INTO `countries` VALUES (795, 'Ashgabat', 'Turkmen', '795', 'Turkmen manat (inv.)', 'TMT', 'tenge (inv.)', 'm', 2, 'Turkmenistan', 'TM', 'TKM', 'Turkmenistan', '142', '143', 0, '993', 'TM.png', NULL, NULL);
INSERT INTO `countries` VALUES (796, 'Cockburn Town', 'Turks and Caicos Islander', '796', 'US dollar', 'USD', 'cent', '$', 2, 'Turks and Caicos Islands', 'TC', 'TCA', 'Turks and Caicos Islands', '019', '029', 0, '1', 'TC.png', NULL, NULL);
INSERT INTO `countries` VALUES (798, 'Funafuti', 'Tuvaluan', '798', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Tuvalu', 'TV', 'TUV', 'Tuvalu', '009', '061', 0, '688', 'TV.png', NULL, NULL);
INSERT INTO `countries` VALUES (800, 'Kampala', 'Ugandan', '800', 'Uganda shilling', 'UGX', 'cent', 'UGX', 0, 'Republic of Uganda', 'UG', 'UGA', 'Uganda', '002', '014', 0, '256', 'UG.png', NULL, NULL);
INSERT INTO `countries` VALUES (804, 'Kiev', 'Ukrainian', '804', 'hryvnia', 'UAH', 'kopiyka', '???', 2, 'Ukraine', 'UA', 'UKR', 'Ukraine', '150', '151', 0, '380', 'UA.png', NULL, NULL);
INSERT INTO `countries` VALUES (807, 'Skopje', 'of the former Yugoslav Republic of Macedonia', '807', 'denar (pl. denars)', 'MKD', 'deni (inv.)', '??????', 2, 'the former Yugoslav Republic of Macedonia', 'MK', 'MKD', 'Macedonia, the former Yugoslav Republic of', '150', '039', 0, '389', 'MK.png', NULL, NULL);
INSERT INTO `countries` VALUES (818, 'Cairo', 'Egyptian', '818', 'Egyptian pound', 'EGP', 'piastre', '??', 2, 'Arab Republic of Egypt', 'EG', 'EGY', 'Egypt', '002', '015', 0, '20', 'EG.png', NULL, NULL);
INSERT INTO `countries` VALUES (826, 'London', 'British', '826', 'pound sterling', 'GBP', 'penny (pl. pence)', '??', 2, 'United Kingdom of Great Britain and Northern Ireland', 'GB', 'GBR', 'United Kingdom', '150', '154', 1, '44', 'GB.png', NULL, NULL);
INSERT INTO `countries` VALUES (831, 'St Peter Port', 'of Guernsey', '831', 'Guernsey pound (GG2)', 'GGP (GG2)', 'penny (pl. pence)', NULL, NULL, 'Bailiwick of Guernsey', 'GG', 'GGY', 'Guernsey', '150', '154', 0, '44', NULL, NULL, NULL);
INSERT INTO `countries` VALUES (832, 'St Helier', 'of Jersey', '832', 'Jersey pound (JE2)', 'JEP (JE2)', 'penny (pl. pence)', NULL, NULL, 'Bailiwick of Jersey', 'JE', 'JEY', 'Jersey', '150', '154', 0, '44', NULL, NULL, NULL);
INSERT INTO `countries` VALUES (833, 'Douglas', 'Manxman; Manxwoman', '833', 'Manx pound (IM2)', 'IMP (IM2)', 'penny (pl. pence)', NULL, NULL, 'Isle of Man', 'IM', 'IMN', 'Isle of Man', '150', '154', 0, '44', NULL, NULL, NULL);
INSERT INTO `countries` VALUES (834, 'Dodoma (TZ1)', 'Tanzanian', '834', 'Tanzanian shilling', 'TZS', 'cent', 'TZS', 2, 'United Republic of Tanzania', 'TZ', 'TZA', 'Tanzania, United Republic of', '002', '014', 0, '255', 'TZ.png', NULL, NULL);
INSERT INTO `countries` VALUES (840, 'Washington DC', 'American', '840', 'US dollar', 'USD', 'cent', '$', 2, 'United States of America', 'US', 'USA', 'United States', '019', '021', 0, '1', 'US.png', NULL, NULL);
INSERT INTO `countries` VALUES (850, 'Charlotte Amalie', 'US Virgin Islander', '850', 'US dollar', 'USD', 'cent', '$', 2, 'United States Virgin Islands', 'VI', 'VIR', 'Virgin Islands, U.S.', '019', '029', 0, '1', 'VI.png', NULL, NULL);
INSERT INTO `countries` VALUES (854, 'Ouagadougou', 'Burkinabe', '854', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Burkina Faso', 'BF', 'BFA', 'Burkina Faso', '002', '011', 0, '226', 'BF.png', NULL, NULL);
INSERT INTO `countries` VALUES (858, 'Montevideo', 'Uruguayan', '858', 'Uruguayan peso', 'UYU', 'cent??simo', '$U', 0, 'Eastern Republic of Uruguay', 'UY', 'URY', 'Uruguay', '019', '005', 0, '598', 'UY.png', NULL, NULL);
INSERT INTO `countries` VALUES (860, 'Tashkent', 'Uzbek', '860', 'sum (inv.)', 'UZS', 'tiyin (inv.)', '????', 2, 'Republic of Uzbekistan', 'UZ', 'UZB', 'Uzbekistan', '142', '143', 0, '998', 'UZ.png', NULL, NULL);
INSERT INTO `countries` VALUES (862, 'Caracas', 'Venezuelan', '862', 'bol??var fuerte (pl. bol??vares fuertes)', 'VEF', 'c??ntimo', 'Bs', 2, 'Bolivarian Republic of Venezuela', 'VE', 'VEN', 'Venezuela, Bolivarian Republic of', '019', '005', 0, '58', 'VE.png', NULL, NULL);
INSERT INTO `countries` VALUES (876, 'Mata-Utu', 'Wallisian; Futunan; Wallis and Futuna Islander', '876', 'CFP franc', 'XPF', 'centime', 'XPF', 0, 'Wallis and Futuna', 'WF', 'WLF', 'Wallis and Futuna', '009', '061', 0, '681', 'WF.png', NULL, NULL);
INSERT INTO `countries` VALUES (882, 'Apia', 'Samoan', '882', 'tala (inv.)', 'WST', 'sene (inv.)', 'WS$', 2, 'Independent State of Samoa', 'WS', 'WSM', 'Samoa', '009', '061', 0, '685', 'WS.png', NULL, NULL);
INSERT INTO `countries` VALUES (887, 'San???a', 'Yemenite', '887', 'Yemeni rial', 'YER', 'fils (inv.)', '???', 2, 'Republic of Yemen', 'YE', 'YEM', 'Yemen', '142', '145', 0, '967', 'YE.png', NULL, NULL);
INSERT INTO `countries` VALUES (894, 'Lusaka', 'Zambian', '894', 'Zambian kwacha (inv.)', 'ZMW', 'ngwee (inv.)', 'ZK', 2, 'Republic of Zambia', 'ZM', 'ZMB', 'Zambia', '002', '014', 0, '260', 'ZM.png', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
