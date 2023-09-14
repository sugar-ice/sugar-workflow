-- MySQL dump 10.13  Distrib 8.1.0, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: activiti
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `act_evt_log`
--

DROP TABLE IF EXISTS `act_evt_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_evt_log`
--

LOCK TABLES `act_evt_log` WRITE;
/*!40000 ALTER TABLE `act_evt_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_evt_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_bytearray`
--

DROP TABLE IF EXISTS `act_ge_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_bytearray`
--

LOCK TABLES `act_ge_bytearray` WRITE;
/*!40000 ALTER TABLE `act_ge_bytearray` DISABLE KEYS */;
INSERT INTO `act_ge_bytearray` VALUES ('13aca214-34bc-11ed-bd8b-283a4d3b4979',1,'source-extra',NULL,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0N\0\0B\0\0\0sR\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0�\�\0\0u0\0\0\�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0�\�\�\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0\�\0\0\��+\0\0mIDATx\�\�\�	�U�?\�IB��H�E\"��dq!\"a{�C�\�}��@��\nT_�+�\��\�/*\�\"akĀ((Kȟ�?\�AHH ;\�!\�L\��\�\�\�v��L�\�33�OU\�ܥo\�;}O\��\�\�\�\�f\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�*�-\�\�ɓO\\�z\�٫V���{\�ׯP(X)\�\��UUe�{\�^���{\�\�\�}\�\�\�6ee�	:�_|\�+W�^�f\�\�Xկ_�l�m�ɪ����f�\�|�\�l\�ҥ\�ܹs\�Y�\�;u��\����!8A3q\�\��X�d\�\r�\�K\�N;\�T<��\��\�\�;ٌ3\n555��r�2�2Dcu�\n��*�t$���\�޻ێ;\�\�k\�\n��\�\�W͚5k\�9眳\�\�o|N�+�!\'\�Ǝ;���\�T\�u\�v\�m?\�|}}!{w\�߲ٯܗ\�{\�\�l\�\�\�g\��ڬw��S\�\�\�Ksl�\�VYMMM\�̙3��v\�ic�\��?\�U�\�e���\�@;\�ӧ\�=�\�K��*�0wʘl�\�\�\�\�\�-ޯ[�4��\�\�ٜ�\���\��\�z\�lРA=���!�jBp�aܸqC\�\�\�?�Q\Zݒw^l\�%�_\�V.�m%��X�\�\�՟?~��\�]�!8A�ѳg\�\�~\��\�jC�Q\�_2�x�eCV-wV��8p�\�}|G���!\'\�0RewD\\.�!\����/�\�\�<-%Ns\�\�\�S�\�je�	:�իW\"�̡�\�\�\�7��]�!�ZBp�#�v70\��\\�=T+Ct�2�\��F�\�\�m\��\�=�4��\�\���\�\�a��\��\�\�\�A�	Ȳ\�\��\�\�s\��\�Yu���$�!��ܚ\�+\Z|�n\�2+e\' \���oi\�/ޜ-�����2\�U\0[�ڕ���S̖/���y\nkVFc\�\��\�>.\�j\��8�!��kY4\�_ق7\�gkj\�߬�\�[\�f6�_\�g;\�vh�\�.�\�V�!��k�\�*\��\�F�.Z\�u\�\�\Z�w���)C\�b@;�ʫ96�\�\Z(C\��-N\�\�\�TIL���O�\0�\�\0 8\0N\0\0[2�\�iS\�ƍ�ڴi\�Ι?��\�\�\�\�t\�\�\�V��\�ѣG�\�\�\�\r0`\�\�\�o�\�\�{\���=\�б\�@�9r\�\�uuu\�WUU�\�I\��4\�M\�\�4ͩ��)=\�\�nݺ��\�;f	NЂ��\�Q�/�\��G��ԧ>�\r6,��\�?����\�\�\�+[�re�lٲ\�3g\�\�q\�\�\�G�3\�\�K/�tY\nS��袋~l\r���O>��\�\��k֬�r\nF=��W�vM\�\���\��ň#&����\�\�;o��~\�_|\�\�w\�}t\�\�\�Mc\�\�>\��,�|x+L\�)�w\�1\�w\�}�\�N;-�4i\�6w\�}\��F�\Zu\����N��FZG\n?�����?�	/�^74-\��N�\�{^��\�\�\'������9\�꣎:����1�b\Z;v\�\�\���W_}\�U)<]j\���\�Ç�H�K\��c�\��\�g>�p�\�{\�\�\�\�d\�l�M\�\�{\�e�/ΦO���\�_�\�^|\�Ŭ��6ٗ\�\�&�\�;k\�\�D��\�o~s\�\�ɓr�T\�\�\�Z\�G�\r<�:�K��\�m\�2ϳ�Z,4SUUu[�	\"0\��\�\�^<P�O�>\�i��v\�>�\�b�z�ᇳG}4[�fM\�ҷ�����z�\�\�\�ζ�\\UG��я~\�\��~�\���١)7hР,�\�\�o~�\�\�/�\�Zh�\�4\"���\�\�a\�\�+���\�\r���DKT\�������nJ\�\�[�lęg����9s�:\�\�7w�\�\\��Q�FU��\�\�?�\��9k�\�OS\nM\�\�i��\�\�ҁ\�z\�1\�u\��}\�٧<<]�\�\�`�	6�O�>�w\�q=Z���R�<�p\�	=jkk�lm4]\nM7e�>M\�\�t��05�\�~\�����8mw�\�\r8\�\�sGv\�\�m�\�Ԛb��z\�\�9�\�\�\�:@\�Ő)\���OS��憦\�\�\�\�\�}�3���h1=z\��\�)��\�-�lm��zj�\�\�\�K\�\��1b\�e�\�:t��+P�\�e\����\�\�\�\�s\�;\�c\�\�O!\�,�	\�\��\���\�c���\�\��\��Ҹ#m튴���K\��ߕv^G�t\�I}\�\�̘1#{ꩧ6{��\�\�\�\�\��y\�l�\�\�\r�\�\�\�\�\�m\�c�W^y%3f\�&?ϨQ�ֻ��4iRG\�dڽm�(\�\�\�o��\�\�\�^{\�\�\�z뭍*��[&\�ΝÝ�+�qUW�\�b0\�.\"/CK��@c\�P\�c̥��_A\�\Z�<\�Ȭ\�@�K\��\�2\�\�Ԝ�\��vo\�XM\�q�\�\�n�\�No������O�\�ʹz4�߳ӎ\�\�\�y}�\�\�\�\�\�\�}��\�J-3�]vY���\�4\�\�\�\�\�W��\�u!�|�&\�\�1�y\�u\�oG8�\�\�|Q�\�v��\�\�\�\�\�\\q\�\�y\�ʚ�~�=�\�\�\�aS�N]w�ӟ�tv\�=\�l2�-Y�d��_�\�W�;Ｓx;aG�,۳5&�Gɿ\�s\�9g�\�_}\�լ{\��=~�\�\�fS�L)����D0�\�\�2ѿ�\�\�^+\�~\�\�\'�?�\�O\�\��\���\�]jߛ\�P\�4�{�\�I\�\�M�����\�!<v\�Z�^(h\\\�\�ΰ\�5\�2�{\�c\�\�g�6\r\�\�\�-��\�?�-\��\��\n�d 7\"U\�\�\�뾴3�g\�\�\�M�0���\�$����\�z뭳��>:�\�ۊ�\�\�\�z\�\�Y\��g?�\�u��\�\�_�bv\�\�W�\�b\�\�\�7ߜ��\�?\�V�X�-\\���>\�\�/.λ\�\�\�\�+\�\�۷o1�]u\�U\� \���}��Q�\�c�<�\�t\�M\�ϛ�@W\�*ˊ\�V\�z��\�lժU\�A\�Ə_\�!Ge�*\���:�6)C��P黋�\�qP� \�\�\�\r\��=�\��z\�.�\�\�?��\�e\��,�\��(���z\�\�bl�\r��\�\�\�u\��Gh<����\�\�\�l(\�ub[G8I\�\�Ĵ^V�24&��;*\�P\�犾\��/�\��\�Ƕ[\�{�\�ɲe\�v�V��\�З.]�\��:ⷝNI;�S�,��%ݿ!�	�\�rK��F\�\�\��\�/\�\�>�\�\��\�/VDqqeA\��kq\�\�򰲱`QTt\�r�WrQA5t�/BR^�\�\�\�#	G�\�\�[o�Λ7o\��\�\���<\�\��\��yy\�-I�rc�\�mΜ9\�\�\��)揖�h]8\�S:c\�je���(\�\\x\�\'֭\�h��\�e -\�=G��\�K�\�o�\�h�\�[	\�ż_��\�\�+\�b\Z\�o�S�\�\�2ˍǋ�\�!�\�?/;��|1\�@�U��\"��\'\��\��m|H>\�n��\�.t\�]w-�;D���^��&�e\�R\\R[[�m:��|K]/\�\�n��\�f\�\�#��\�:m���\�ZfTNy\�QT\"�\�Sq\Z-���,�U)Z���r\"4\�\�{�6\�\�hY���u!DKWT���\�\'?\�┋\0\�\���}���ly\�B<-R\�\�7�\�\�\�L�hɈ\�ѿ&B^ʦ�u\�\�\�PS\��\�ˡ��.4Eو\�\��;g�yf\�v�XF0�V�\�\�ʍ��hQ�\0�4�\�\\~�e-�<њ5k֬b�~\����<]\�Zb���ْ\�P�\�T��\��\�\�i\����\�\�oW,�	J\�\�s�|\'\�V\��\n�Bt��IZU�\�N��Nhҋ#�DG؃:�b�\���\��\�:iN���b�\�;*�)L\��\�\���%(�STRy�P<�\�Iy�S\�%?\�Я_�u-\�\�oW\�ȣU)�Z#,�q\�\�\�=qz.Zۢ%\"N\�5\'8�>_�)CM��|=G`����ם\�-�*E�RE0�\�[�\�_=;\�\�c�\�)Z\r#\0\�!hce\"�we��0-U�\�YQ>b�h\�\ny�n�\�߲�\'v�2TU~\0ښbh�\�ݶ\��h�Jv϶O\�\�x]:��\�6�w7gYH���>_\��փi�\�_�\�ƿ\�o\�L�\�\�R���B�S(Qi\�G\�h��j\�\�a��\�\�?�x\�#Z�\�nޯ$�G\�^xaq��=����+\�\�0Z\���.x\�g\�ݎ\��\"xU\�b�\Z\��]�\�eF\��hu\��\�D�Dޏ����,U|?\�*e���U�|���\�}\�{\�\�\�\�U��\�\��w\�}w\�{�\�w��}\�\�,���Q�\�O1o�LL�6m�\�G\�UL\�|V^\�הr\�_�\�\�f-C\�r�U\\�\�P��\�c˖-k\�\�?\\�\����G��/^<0i�\��\r>����-�\�#Flp��vFu���:��N\����G\�r��)��o\��GI~\Z\"v\�\�ߩ\\��M�@\"�\�\�|���\�\�K\�r-;\�┟���_\�V٩;]\��\�,���緣\�wekST�\�\�SAQaG�ST\�\�	M!^;z\�\�.U�\Z#Z8c]�\�\�;\��џ)N�ũ��\�X<S\�1�\�/Z\�\�\"@E��\�ӱ�*�-�ң,\�<��\�m\�} ZZ�\�.ڒ\�КT^\�#�������\�#_O��\�\"JN�\�\nϧ�\���\�l<��3gƑӋ\�����Rm�=KGr�Mŵ\���\�޽{?�*�\�-���-8y ������\�\'Z��\":ZG`�eF\��Sby�܆\�{EЊ����)\�G\�D~�.\�t\�<\��-\�\�b�y���L\�\�Qᖋ�Vy(�P}j\�\�P<#�t\�IY[\��\�e�1\�+\�\"\�D��\�׾VlQʃM��U*���\�\���~x!W�\�\�6V&>Tim��^������6\�;�\�\�\�\�Y)4m��\�\�R��E���,\\e^��$Ujc_xᅃ<\��\�\�\�=\'M��8��q\���W�*�\�Iݛ��S\�\�Pk_���ƈ�EyE�O\\�N\�Oڔ�/�J�N\�o(�\�\�r\�(���0ѿ$���NQ)�_ŗ��T]\��\�\�\���cʕ\�g�R E��Tq�2�Y\���\�\�\�)�ќV��X�\Z�m\�J�*�\0�\�b}G(\�ة�x]\�5��\�_|?f*�#hl���T�\�4u��\�by�\�],8m��e(\�\'S�+��\�{\\�\�Z\�N�%O\nN\��Q\�\'N�\":y�\� �\�<\�L���h\����L����C\�2\�6i�\n(?ڏ�1\0a�s�WE���*�h͉S`ђ���\�\�\�������w8�\�h܎�0�Sy�C�8�\�[\0��\"�?*٘����6犿wѢS�?y\�ߨ@�b�\�4��t4\�U�\Z#j����\�ti>�j��\�������\�{�V��J3���\�\"\�D߻\�I�\�\�\�z�ƘO�@��8Q\�\�\�\�K�\�\�(�\��:\�\�K\�\�λ\�\�*�`\�\�a�̽�a�W�\�i)\��ַ�z\�y\�\����o\��M\�ӎ��\�o�����?\�7�\�\�\�\�����)�\�Ǐ�o��\Z\���&�զ.*�\�8\�\�Ң\"6lX�2�\�u��p[��E����e1\�emN\�T�\�\��\�e\�\�O��\�o��\�ȑ#[�3�=:�\���\�}:\���\'(��`��w��\�\��\�ﶭ\�\�t\�7.I\�\��\��?\�ƿE��\�QOUmN*o\�\��\�2��uߘﯡ��6\�{\�\�y�\��\�Q��O���)�� ޒ}��\�C=�\�~\ny7t�u\�\�h1w\�y\�K�.�z\�\�\�h\�\�y\��f-Z�h\�\�ٳG[\�\0M\�_�?J�\�/�\�\�\�-!� ��_c�%Ow���\�D�����\��>�\�ԩS��\�\�O��^\nfq8�\�\���.�N ~$�8D@\\�x\�5\�4;<Eh�-N%˫��\�\�L�k��5z\�\�\�uuu\�^y\�+\�͛��%�˻�\�˗\n�\�\�\�\�k�y�\�t��\�CMt⏋K\�BO�\�\�\�\�/��\�\�Rh:��\�\'Z\�]w\�5zժU_xᅋ�L���%��\�o.�\�\\�\�ڴ\�n-�\��:�9#O\�\�?\�|\�wl\�\�\�r1_t�ו��\�.\��k=\�h�#�[��\�g?�ٯ�<\�ȗF�9��\�ӆ�ǌ3�P(\\�n\�b\����:ݼ����&�&E\�\�\�4Êĸn1FV-��\�\�K1�e1CT�Fft\�8��\�\'Z\�HfĈ\�>\�\�c7=\�\�o�u\�Y+:\�Oo\�\�{\�\�n�\�\�+V,M\�\�q;=Њ�봯�)� T�����6\�\�\�\�ԙ�SN�\��\�\�\�gX\� O�\�\�\��\���\�{\�1\�C\�\�{~���5�z\�\�:��HG0�\�|\�\�w�zꩥ���\�իW\�K��ݜ9sn\��\�\�\�)���\�\�F䄧�\��Zp��6\�1\�ޑ#G\�<u\�\��L�\�<o����]�\��l\��\��6b\0\�i](NL*\�\���)~\�=�j�\�rq5\�K]q-8Ѧ\�\�Y\�\�/K\0\�\���\�\0�\�\�Օ�Y�	\0\�\�\��]����x݈4�G\�c�\���\�D{�vőJlhWT\�ss�v��\0Zݗ\�4��\�\�+\�\�ČWZ6\�Uz.��\�Q�u%\�\�Dk�)m`ё\�4�W\�\��\�\�\�<sJ�\�Q͒�\�/(M\0��=\�\�\�4����2��T\nC5�y\�7\�-\�\�G\�ܵ�?�P:\�}>[;��\��\�c�\����QU\�\���K\�\�\�ڦ\�\�6���t$\�ychGCK���\�ե\�4���u�ώ\�W\�\�U�����i괿\�\�T\�-o���-K?OS�4\rIS\�\�|d�\�2\�k�.�V1�~��BS\�{+U\�\���\�\�K�P5�\�\�Yç�:\r-N�\�L�F9�\�v��i�$[{:oE\����\�E��haz�\��\�V)@��V�\�\����l�\�\�\�\�xYH��\�#J+\�\"D?�]\�\�\�\��Zp�&�Pv��Su\�\�\�W\nH}Kg�B�gk�I\r)ۀhY#JA(\��sJ��\�}�\��w\�tnYx���=S\�\�c/��\�CY\'\�R!8\�v\�6\�t۫t�\�}�\�\��U�\�C;�Q@;���H\�J�\�ϔBӄ�}py�S<wXi�|_\� 7\�\�yt\���m\�4ݰ�y��iti\�\�@�\�{u\0�#BO\�c:��b\Z�}0\�����#4Ք܆��ף\���:-N��8\�\�\�\�\�-N\�B\�J\�\�\�\�a	v.m�CK\�\r�*ZM�z{<��e��t@����LEȚR�__Y��{ų�4\�~��顊\�g�\�T~\�\�˧�6\�\���\�\�]3C\0��\�\�������\�*���\�@�\�μ�\'Z\�\�x��k�\�\�e�o�:�H]��>N\0\0�l����j���(}e��V���\�lt\�Փ�-[fEl�/_\�\�+\�]�!8A��f͚\�.\\8ךh�-ZP(\�*Ct�2�\�F}}�}s\�\�\��Z\�\�wީ\�>pU�˔!\'\�0?�\�\�\�\�{뭷fZ\�\'���jkk_6lس\�]�!8A�R(\�O�\�\�K�,Ylm��\�˗�7cƌ>\�{��2DW-C4M7�\0\�\�\�߾\�\�N�8����\�\�W׫W�>\�J�Ux�&M�������\�?�ie��Z���C�\�\�[��z\�/ϙ3\�\�\�\�\�\�n�AUUUVL+�6m\�?�N�\Z�֟y\�a�=�\�\�\��g�v6v\�\��\�\�\�צ\���\�\�#�Ȏ��\�zY;\�S(V.]�\�չs\�.\\�`�\'֬Y3=Nqq\���!�!\'\��ƍ7���\�l\�h\�\���\��/~\n\�l\�ok\�\�\�;\�*C\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\���g\�O\0\0\0\0IEND�B`�',NULL),('1dee0f76-34bc-11ed-bd8b-283a4d3b4979',1,'借款申请流程.Loan.png','1dee0f75-34bc-11ed-bd8b-283a4d3b4979',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0N\0\0B\0\0\0sR\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0�\�\0\0u0\0\0\�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0�\�\�\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0\�\0\0\��+\0\0mIDATx\�\�\�	�U�?\�IB��H�E\"��dq!\"a{�C�\�}��@��\nT_�+�\��\�/*\�\"akĀ((Kȟ�?\�AHH ;\�!\�L\��\�\�\�v��L�\�33�OU\�ܥo\�;}O\��\�\�\�\�f\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�*�-\�\�ɓO\\�z\�٫V���{\�ׯP(X)\�\��UUe�{\�^���{\�\�\�}\�\�\�6ee�	:�_|\�+W�^�f\�\�Xկ_�l�m�ɪ����f�\�|�\�l\�ҥ\�ܹs\�Y�\�;u��\����!8A3q\�\��X�d\�\r�\�K\�N;\�T<��\��\�\�;ٌ3\n555��r�2�2Dcu�\n��*�t$���\�޻ێ;\�\�k\�\n��\�\�W͚5k\�9眳\�\�o|N�+�!\'\�Ǝ;���\�T\�u\�v\�m?\�|}}!{w\�߲ٯܗ\�{\�\�l\�\�\�g\��ڬw��S\�\�\�Ksl�\�VYMMM\�̙3��v\�ic�\��?\�U�\�e���\�@;\�ӧ\�=�\�K��*�0wʘl�\�\�\�\�\�-ޯ[�4��\�\�ٜ�\���\��\�z\�lРA=���!�jBp�aܸqC\�\�\�?�Q\Zݒw^l\�%�_\�V.�m%��X�\�\�՟?~��\�]�!8A�ѳg\�\�~\��\�jC�Q\�_2�x�eCV-wV��8p�\�}|G���!\'\�0RewD\\.�!\����/�\�\�<-%Ns\�\�\�S�\�je�	:�իW\"�̡�\�\�\�7��]�!�ZBp�#�v70\��\\�=T+Ct�2�\��F�\�\�m\��\�=�4��\�\���\�\�a��\��\�\�\�A�	Ȳ\�\��\�\�s\��\�Yu���$�!��ܚ\�+\Z|�n\�2+e\' \���oi\�/ޜ-�����2\�U\0[�ڕ���S̖/���y\nkVFc\�\��\�>.\�j\��8�!��kY4\�_ق7\�gkj\�߬�\�[\�f6�_\�g;\�vh�\�.�\�V�!��k�\�*\��\�F�.Z\�u\�\�\Z�w���)C\�b@;�ʫ96�\�\Z(C\��-N\�\�\�TIL���O�\0�\�\0 8\0N\0\0[2�\�iS\�ƍ�ڴi\�Ι?��\�\�\�\�t\�\�\�V��\�ѣG�\�\�\�\r0`\�\�\�o�\�\�{\���=\�б\�@�9r\�\�uuu\�WUU�\�I\��4\�M\�\�4ͩ��)=\�\�nݺ��\�;f	NЂ��\�Q�/�\��G��ԧ>�\r6,��\�?����\�\�\�+[�re�lٲ\�3g\�\�q\�\�\�G�3\�\�K/�tY\nS��袋~l\r���O>��\�\��k֬�r\nF=��W�vM\�\���\��ň#&����\�\�;o��~\�_|\�\�w\�}t\�\�\�Mc\�\�>\��,�|x+L\�)�w\�1\�w\�}�\�N;-�4i\�6w\�}\��F�\Zu\����N��FZG\n?�����?�	/�^74-\��N�\�{^��\�\�\'������9\�꣎:����1�b\Z;v\�\�\���W_}\�U)<]j\���\�Ç�H�K\��c�\��\�g>�p�\�{\�\�\�\�d\�l�M\�\�{\�e�/ΦO���\�_�\�^|\�Ŭ��6ٗ\�\�&�\�;k\�\�D��\�o~s\�\�ɓr�T\�\�\�Z\�G�\r<�:�K��\�m\�2ϳ�Z,4SUUu[�	\"0\��\�\�^<P�O�>\�i��v\�>�\�b�z�ᇳG}4[�fM\�ҷ�����z�\�\�\�ζ�\\UG��я~\�\��~�\���١)7hР,�\�\�o~�\�\�/�\�Zh�\�4\"���\�\�a\�\�+���\�\r���DKT\�������nJ\�\�[�lęg����9s�:\�\�7w�\�\\��Q�FU��\�\�?�\��9k�\�OS\nM\�\�i��\�\�ҁ\�z\�1\�u\��}\�٧<<]�\�\�`�	6�O�>�w\�q=Z���R�<�p\�	=jkk�lm4]\nM7e�>M\�\�t��05�\�~\�����8mw�\�\r8\�\�sGv\�\�m�\�Ԛb��z\�\�9�\�\�\�:@\�Ő)\���OS��憦\�\�\�\�\�}�3���h1=z\��\�)��\�-�lm��zj�\�\�\�K\�\��1b\�e�\�:t��+P�\�e\����\�\�\�\�s\�;\�c\�\�O!\�,�	\�\��\���\�c���\�\��\��Ҹ#m튴���K\��ߕv^G�t\�I}\�\�̘1#{ꩧ6{��\�\�\�\�\��y\�l�\�\�\r�\�\�\�\�\�m\�c�W^y%3f\�&?ϨQ�ֻ��4iRG\�dڽm�(\�\�\�o��\�\�\�^{\�\�\�z뭍*��[&\�ΝÝ�+�qUW�\�b0\�.\"/CK��@c\�P\�c̥��_A\�\Z�<\�Ȭ\�@�K\��\�2\�\�Ԝ�\��vo\�XM\�q�\�\�n�\�No������O�\�ʹz4�߳ӎ\�\�\�y}�\�\�\�\�\�\�}��\�J-3�]vY���\�4\�\�\�\�\�W��\�u!�|�&\�\�1�y\�u\�oG8�\�\�|Q�\�v��\�\�\�\�\�\\q\�\�y\�ʚ�~�=�\�\�\�aS�N]w�ӟ�tv\�=\�l2�-Y�d��_�\�W�;Ｓx;aG�,۳5&�Gɿ\�s\�9g�\�_}\�լ{\��=~�\�\�fS�L)����D0�\�\�2ѿ�\�\�^+\�~\�\�\'�?�\�O\�\��\���\�]jߛ\�P\�4�{�\�I\�\�M�����\�!<v\�Z�^(h\\\�\�ΰ\�5\�2�{\�c\�\�g�6\r\�\�\�-��\�?�-\��\��\n�d 7\"U\�\�\�뾴3�g\�\�\�M�0���\�$����\�z뭳��>:�\�ۊ�\�\�\�z\�\�Y\��g?�\�u��\�\�_�bv\�\�W�\�b\�\�\�7ߜ��\�?\�V�X�-\\���>\�\�/.λ\�\�\�\�+\�\�۷o1�]u\�U\� \���}��Q�\�c�<�\�t\�M\�ϛ�@W\�*ˊ\�V\�z��\�lժU\�A\�Ə_\�!Ge�*\���:�6)C��P黋�\�qP� \�\�\�\r\��=�\��z\�.�\�\�?��\�e\��,�\��(���z\�\�bl�\r��\�\�\�u\��Gh<����\�\�\�l(\�ub[G8I\�\�Ĵ^V�24&��;*\�P\�犾\��/�\��\�Ƕ[\�{�\�ɲe\�v�V��\�З.]�\��:ⷝNI;�S�,��%ݿ!�	�\�rK��F\�\�\��\�/\�\�>�\�\��\�/VDqqeA\��kq\�\�򰲱`QTt\�r�WrQA5t�/BR^�\�\�\�#	G�\�\�[o�Λ7o\��\�\���<\�\��\��yy\�-I�rc�\�mΜ9\�\�\��)揖�h]8\�S:c\�je���(\�\\x\�\'֭\�h��\�e -\�=G��\�K�\�o�\�h�\�[	\�ż_��\�\�+\�b\Z\�o�S�\�\�2ˍǋ�\�!�\�?/;��|1\�@�U��\"��\'\��\��m|H>\�n��\�.t\�]w-�;D���^��&�e\�R\\R[[�m:��|K]/\�\�n��\�f\�\�#��\�:m���\�ZfTNy\�QT\"�\�Sq\Z-���,�U)Z���r\"4\�\�{�6\�\�hY���u!DKWT���\�\'?\�┋\0\�\���}���ly\�B<-R\�\�7�\�\�\�L�hɈ\�ѿ&B^ʦ�u\�\�\�PS\��\�ˡ��.4Eو\�\��;g�yf\�v�XF0�V�\�\�ʍ��hQ�\0�4�\�\\~�e-�<њ5k֬b�~\����<]\�Zb���ْ\�P�\�T��\��\�\�i\����\�\�oW,�	J\�\�s�|\'\�V\��\n�Bt��IZU�\�N��Nhҋ#�DG؃:�b�\���\��\�:iN���b�\�;*�)L\��\�\���%(�STRy�P<�\�Iy�S\�%?\�Я_�u-\�\�oW\�ȣU)�Z#,�q\�\�\�=qz.Zۢ%\"N\�5\'8�>_�)CM��|=G`����ם\�-�*E�RE0�\�[�\�_=;\�\�c�\�)Z\r#\0\�!hce\"�we��0-U�\�YQ>b�h\�\ny�n�\�߲�\'v�2TU~\0ښbh�\�ݶ\��h�Jv϶O\�\�x]:��\�6�w7gYH���>_\��փi�\�_�\�ƿ\�o\�L�\�\�R���B�S(Qi\�G\�h��j\�\�a��\�\�?�x\�#Z�\�nޯ$�G\�^xaq��=����+\�\�0Z\���.x\�g\�ݎ\��\"xU\�b�\Z\��]�\�eF\��hu\��\�D�Dޏ����,U|?\�*e���U�|���\�}\�{\�\�\�\�U��\�\��w\�}w\�{�\�w��}\�\�,���Q�\�O1o�LL�6m�\�G\�UL\�|V^\�הr\�_�\�\�f-C\�r�U\\�\�P��\�c˖-k\�\�?\\�\����G��/^<0i�\��\r>����-�\�#Flp��vFu���:��N\����G\�r��)��o\��GI~\Z\"v\�\�ߩ\\��M�@\"�\�\�|���\�\�K\�r-;\�┟���_\�V٩;]\��\�,���緣\�wekST�\�\�SAQaG�ST\�\�	M!^;z\�\�.U�\Z#Z8c]�\�\�;\��џ)N�ũ��\�X<S\�1�\�/Z\�\�\"@E��\�ӱ�*�-�ң,\�<��\�m\�} ZZ�\�.ڒ\�КT^\�#�������\�#_O��\�\"JN�\�\nϧ�\���\�l<��3gƑӋ\�����Rm�=KGr�Mŵ\���\�޽{?�*�\�-���-8y ������\�\'Z��\":ZG`�eF\��Sby�܆\�{EЊ����)\�G\�D~�.\�t\�<\��-\�\�b�y���L\�\�Qᖋ�Vy(�P}j\�\�P<#�t\�IY[\��\�e�1\�+\�\"\�D��\�׾VlQʃM��U*���\�\���~x!W�\�\�6V&>Tim��^������6\�;�\�\�\�\�Y)4m��\�\�R��E���,\\e^��$Ujc_xᅃ<\��\�\�\�=\'M��8��q\���W�*�\�Iݛ��S\�\�Pk_���ƈ�EyE�O\\�N\�Oڔ�/�J�N\�o(�\�\�r\�(���0ѿ$���NQ)�_ŗ��T]\��\�\�\���cʕ\�g�R E��Tq�2�Y\���\�\�\�)�ќV��X�\Z�m\�J�*�\0�\�b}G(\�ة�x]\�5��\�_|?f*�#hl���T�\�4u��\�by�\�],8m��e(\�\'S�+��\�{\\�\�Z\�N�%O\nN\��Q\�\'N�\":y�\� �\�<\�L���h\����L����C\�2\�6i�\n(?ڏ�1\0a�s�WE���*�h͉S`ђ���\�\�\�������w8�\�h܎�0�Sy�C�8�\�[\0��\"�?*٘����6犿wѢS�?y\�ߨ@�b�\�4��t4\�U�\Z#j����\�ti>�j��\�������\�{�V��J3���\�\"\�D߻\�I�\�\�\�z�ƘO�@��8Q\�\�\�\�K�\�\�(�\��:\�\�K\�\�λ\�\�*�`\�\�a�̽�a�W�\�i)\��ַ�z\�y\�\����o\��M\�ӎ��\�o�����?\�7�\�\�\�\�����)�\�Ǐ�o��\Z\���&�զ.*�\�8\�\�Ң\"6lX�2�\�u��p[��E����e1\�emN\�T�\�\��\�e\�\�O��\�o��\�ȑ#[�3�=:�\���\�}:\���\'(��`��w��\�\��\�ﶭ\�\�t\�7.I\�\��\��?\�ƿE��\�QOUmN*o\�\��\�2��uߘﯡ��6\�{\�\�y�\��\�Q��O���)�� ޒ}��\�C=�\�~\ny7t�u\�\�h1w\�y\�K�.�z\�\�\�h\�\�y\��f-Z�h\�\�ٳG[\�\0M\�_�?J�\�/�\�\�\�-!� ��_c�%Ow���\�D�����\��>�\�ԩS��\�\�O��^\nfq8�\�\���.�N ~$�8D@\\�x\�5\�4;<Eh�-N%˫��\�\�L�k��5z\�\�\�uuu\�^y\�+\�͛��%�˻�\�˗\n�\�\�\�\�k�y�\�t��\�CMt⏋K\�BO�\�\�\�\�/��\�\�Rh:��\�\'Z\�]w\�5zժU_xᅋ�L���%��\�o.�\�\\�\�ڴ\�n-�\��:�9#O\�\�?\�|\�wl\�\�\�r1_t�ו��\�.\��k=\�h�#�[��\�g?�ٯ�<\�ȗF�9��\�ӆ�ǌ3�P(\\�n\�b\����:ݼ����&�&E\�\�\�4Êĸn1FV-��\�\�K1�e1CT�Fft\�8��\�\'Z\�HfĈ\�>\�\�c7=\�\�o�u\�Y+:\�Oo\�\�{\�\�n�\�\�+V,M\�\�q;=Њ�봯�)� T�����6\�\�\�\�ԙ�SN�\��\�\�\�gX\� O�\�\�\��\���\�{\�1\�C\�\�{~���5�z\�\�:��HG0�\�|\�\�w�zꩥ���\�իW\�K��ݜ9sn\��\�\�\�)���\�\�F䄧�\��Zp��6\�1\�ޑ#G\�<u\�\��L�\�<o����]�\��l\��\��6b\0\�i](NL*\�\���)~\�=�j�\�rq5\�K]q-8Ѧ\�\�Y\�\�/K\0\�\���\�\0�\�\�Օ�Y�	\0\�\�\��]����x݈4�G\�c�\���\�D{�vőJlhWT\�ss�v��\0Zݗ\�4��\�\�+\�\�ČWZ6\�Uz.��\�Q�u%\�\�Dk�)m`ё\�4�W\�\��\�\�\�<sJ�\�Q͒�\�/(M\0��=\�\�\�4����2��T\nC5�y\�7\�-\�\�G\�ܵ�?�P:\�}>[;��\��\�c�\����QU\�\���K\�\�\�ڦ\�\�6���t$\�ychGCK���\�ե\�4���u�ώ\�W\�\�U�����i괿\�\�T\�-o���-K?OS�4\rIS\�\�|d�\�2\�k�.�V1�~��BS\�{+U\�\���\�\�K�P5�\�\�Yç�:\r-N�\�L�F9�\�v��i�$[{:oE\����\�E��haz�\��\�V)@��V�\�\����l�\�\�\�\�xYH��\�#J+\�\"D?�]\�\�\�\��Zp�&�Pv��Su\�\�\�W\nH}Kg�B�gk�I\r)ۀhY#JA(\��sJ��\�}�\��w\�tnYx���=S\�\�c/��\�CY\'\�R!8\�v\�6\�t۫t�\�}�\�\��U�\�C;�Q@;���H\�J�\�ϔBӄ�}py�S<wXi�|_\� 7\�\�yt\���m\�4ݰ�y��iti\�\�@�\�{u\0�#BO\�c:��b\Z�}0\�����#4Ք܆��ף\���:-N��8\�\�\�\�\�-N\�B\�J\�\�\�\�a	v.m�CK\�\r�*ZM�z{<��e��t@����LEȚR�__Y��{ų�4\�~��顊\�g�\�T~\�\�˧�6\�\���\�\�]3C\0��\�\�������\�*���\�@�\�μ�\'Z\�\�x��k�\�\�e�o�:�H]��>N\0\0�l����j���(}e��V���\�lt\�Փ�-[fEl�/_\�\�+\�]�!8A��f͚\�.\\8ךh�-ZP(\�*Ct�2�\�F}}�}s\�\�\��Z\�\�wީ\�>pU�˔!\'\�0?�\�\�\�\�{뭷fZ\�\'���jkk_6lس\�]�!8A�R(\�O�\�\�K�,Ylm��\�˗�7cƌ>\�{��2DW-C4M7�\0\�\�\�߾\�\�N�8����\�\�W׫W�>\�J�Ux�&M�������\�?�ie��Z���C�\�\�[��z\�/ϙ3\�\�\�\�\�\�n�AUUUVL+�6m\�?�N�\Z�֟y\�a�=�\�\�\��g�v6v\�\��\�\�\�צ\���\�\�#�Ȏ��\�zY;\�S(V.]�\�չs\�.\\�`�\'֬Y3=Nqq\���!�!\'\��ƍ7���\�l\�h\�\���\��/~\n\�l\�ok\�\�\�;\�*C\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\���g\�O\0\0\0\0IEND�B`�',0),('1dee0f77-34bc-11ed-bd8b-283a4d3b4979',1,'借款申请流程.bpmn20.xml','1dee0f75-34bc-11ed-bd8b-283a4d3b4979',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<bpmn2:definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmn2=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <bpmn2:process id=\"Loan\" name=\"借款流程\" isExecutable=\"true\">\n    <bpmn2:startEvent id=\"sid-73C00F4B-1CEC-411F-A3D0-D8C73DEA2372\" name=\"开始\">\n      <bpmn2:outgoing>sid-384CD776-A2C1-4B62-BAA2-E759F038BEF7</bpmn2:outgoing>\n    </bpmn2:startEvent>\n    <bpmn2:userTask id=\"sid-2D3F212C-34A1-4D90-8A74-1BB7BCABA4AF\" name=\"部门经理审核\"></bpmn2:userTask>\n    <bpmn2:sequenceFlow id=\"sid-384CD776-A2C1-4B62-BAA2-E759F038BEF7\" sourceRef=\"sid-73C00F4B-1CEC-411F-A3D0-D8C73DEA2372\" targetRef=\"sid-2D3F212C-34A1-4D90-8A74-1BB7BCABA4AF\"></bpmn2:sequenceFlow>\n    <bpmn2:userTask id=\"sid-FB386C0B-E0A6-4E6A-849B-5E1614A99665\" name=\"财务审批\"></bpmn2:userTask>\n    <bpmn2:sequenceFlow id=\"sid-5C879CA3-C973-490E-AA97-FAAFF49143A3\" sourceRef=\"sid-2D3F212C-34A1-4D90-8A74-1BB7BCABA4AF\" targetRef=\"sid-FB386C0B-E0A6-4E6A-849B-5E1614A99665\"></bpmn2:sequenceFlow>\n    <bpmn2:endEvent id=\"sid-431CD5BC-26BB-427E-BC8A-4DCC343D6B79\" name=\"结束\">\n      <bpmn2:incoming>sid-DBD4AC6E-1CA4-4D5F-9EFA-35471D61DF95</bpmn2:incoming>\n    </bpmn2:endEvent>\n    <bpmn2:sequenceFlow id=\"sid-DBD4AC6E-1CA4-4D5F-9EFA-35471D61DF95\" sourceRef=\"sid-FB386C0B-E0A6-4E6A-849B-5E1614A99665\" targetRef=\"sid-431CD5BC-26BB-427E-BC8A-4DCC343D6B79\"></bpmn2:sequenceFlow>\n  </bpmn2:process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_Loan\">\n    <bpmndi:BPMNPlane bpmnElement=\"Loan\" id=\"BPMNPlane_Loan\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-73C00F4B-1CEC-411F-A3D0-D8C73DEA2372\" id=\"BPMNShape_sid-73C00F4B-1CEC-411F-A3D0-D8C73DEA2372\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"146.5\" y=\"217.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2D3F212C-34A1-4D90-8A74-1BB7BCABA4AF\" id=\"BPMNShape_sid-2D3F212C-34A1-4D90-8A74-1BB7BCABA4AF\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"221.5\" y=\"192.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-FB386C0B-E0A6-4E6A-849B-5E1614A99665\" id=\"BPMNShape_sid-FB386C0B-E0A6-4E6A-849B-5E1614A99665\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"366.5\" y=\"192.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-431CD5BC-26BB-427E-BC8A-4DCC343D6B79\" id=\"BPMNShape_sid-431CD5BC-26BB-427E-BC8A-4DCC343D6B79\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"511.5\" y=\"218.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-384CD776-A2C1-4B62-BAA2-E759F038BEF7\" id=\"BPMNEdge_sid-384CD776-A2C1-4B62-BAA2-E759F038BEF7\">\n        <omgdi:waypoint x=\"176.5\" y=\"232.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"221.5\" y=\"232.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-DBD4AC6E-1CA4-4D5F-9EFA-35471D61DF95\" id=\"BPMNEdge_sid-DBD4AC6E-1CA4-4D5F-9EFA-35471D61DF95\">\n        <omgdi:waypoint x=\"466.5\" y=\"232.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"511.5\" y=\"232.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-5C879CA3-C973-490E-AA97-FAAFF49143A3\" id=\"BPMNEdge_sid-5C879CA3-C973-490E-AA97-FAAFF49143A3\">\n        <omgdi:waypoint x=\"321.5\" y=\"232.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"366.5\" y=\"232.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</bpmn2:definitions>',0),('2b637796-2db6-11ed-b237-283a4d3b4979',2,'source',NULL,_binary '{\"resourceId\":\"2b5a01b5-2db6-11ed-b237-283a4d3b4979\",\"properties\":{\"process_id\":\"Leave\",\"name\":\"请假申请流程\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-3AAF069C-9D1F-4109-B5D0-F6F48FD36F44\",\"properties\":{\"overrideid\":\"\",\"name\":\"开始\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2AEF1531-8C04-4774-82C7-82ED3A7B1C6B\"}],\"bounds\":{\"lowerRight\":{\"x\":114.19999999999999,\"y\":227},\"upperLeft\":{\"x\":84.19999999999999,\"y\":197}},\"dockers\":[]},{\"resourceId\":\"sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7\",\"properties\":{\"overrideid\":\"\",\"name\":\"直属领导审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-D204CAAD-4C7D-4ADB-8C4A-DDCBBF9258AC\"}],\"bounds\":{\"lowerRight\":{\"x\":259.2,\"y\":252},\"upperLeft\":{\"x\":159.2,\"y\":172}},\"dockers\":[]},{\"resourceId\":\"sid-2AEF1531-8C04-4774-82C7-82ED3A7B1C6B\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7\"}],\"bounds\":{\"lowerRight\":{\"x\":158.35625,\"y\":212},\"upperLeft\":{\"x\":114.80937499999999,\"y\":212}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7\"}},{\"resourceId\":\"sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929\",\"properties\":{\"overrideid\":\"\",\"name\":\"部门经理审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-69022BEB-06E9-4225-9AB6-D86BEE5B6642\"}],\"bounds\":{\"lowerRight\":{\"x\":404.2,\"y\":252},\"upperLeft\":{\"x\":304.2,\"y\":172}},\"dockers\":[]},{\"resourceId\":\"sid-D204CAAD-4C7D-4ADB-8C4A-DDCBBF9258AC\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929\"}],\"bounds\":{\"lowerRight\":{\"x\":303.35625,\"y\":212},\"upperLeft\":{\"x\":260.04375,\"y\":212}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929\"}},{\"resourceId\":\"sid-95041659-921C-4647-AA7E-007DD53297BA\",\"properties\":{\"overrideid\":\"\",\"name\":\"人事专员审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-D929EED9-94E8-4398-8344-97AD26547CA5\"}],\"bounds\":{\"lowerRight\":{\"x\":549.2,\"y\":252},\"upperLeft\":{\"x\":449.2,\"y\":172}},\"dockers\":[]},{\"resourceId\":\"sid-69022BEB-06E9-4225-9AB6-D86BEE5B6642\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-95041659-921C-4647-AA7E-007DD53297BA\"}],\"bounds\":{\"lowerRight\":{\"x\":448.35625000000005,\"y\":212},\"upperLeft\":{\"x\":405.04375000000005,\"y\":212}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50.000000000000036,\"y\":40}],\"target\":{\"resourceId\":\"sid-95041659-921C-4647-AA7E-007DD53297BA\"}},{\"resourceId\":\"sid-E6384472-DFD1-4776-83CB-1F8733961BEE\",\"properties\":{\"overrideid\":\"\",\"name\":\"人事经理审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-4E35F3DB-BF02-4697-9781-858C5929378A\"}],\"bounds\":{\"lowerRight\":{\"x\":694.2,\"y\":252},\"upperLeft\":{\"x\":594.2,\"y\":172}},\"dockers\":[]},{\"resourceId\":\"sid-D929EED9-94E8-4398-8344-97AD26547CA5\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-E6384472-DFD1-4776-83CB-1F8733961BEE\"}],\"bounds\":{\"lowerRight\":{\"x\":593.35625,\"y\":212},\"upperLeft\":{\"x\":550.04375,\"y\":212}},\"dockers\":[{\"x\":50.000000000000036,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-E6384472-DFD1-4776-83CB-1F8733961BEE\"}},{\"resourceId\":\"sid-2B5363F4-D5A0-41C4-B626-E497657D21E4\",\"properties\":{\"overrideid\":\"\",\"name\":\"总经理审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B27E825E-E313-4159-B323-7CB877EEEC17\"}],\"bounds\":{\"lowerRight\":{\"x\":839.2,\"y\":252},\"upperLeft\":{\"x\":739.2,\"y\":172}},\"dockers\":[]},{\"resourceId\":\"sid-4E35F3DB-BF02-4697-9781-858C5929378A\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2B5363F4-D5A0-41C4-B626-E497657D21E4\"}],\"bounds\":{\"lowerRight\":{\"x\":738.35625,\"y\":212},\"upperLeft\":{\"x\":695.04375,\"y\":212}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-2B5363F4-D5A0-41C4-B626-E497657D21E4\"}},{\"resourceId\":\"sid-C9AF2295-51A5-44C8-AF20-AA44B6446843\",\"properties\":{\"overrideid\":\"\",\"name\":\"结束\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":912.2,\"y\":226},\"upperLeft\":{\"x\":884.2,\"y\":198}},\"dockers\":[]},{\"resourceId\":\"sid-B27E825E-E313-4159-B323-7CB877EEEC17\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-C9AF2295-51A5-44C8-AF20-AA44B6446843\"}],\"bounds\":{\"lowerRight\":{\"x\":883.575,\"y\":212},\"upperLeft\":{\"x\":839.590625,\"y\":212}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-C9AF2295-51A5-44C8-AF20-AA44B6446843\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('61e66487-2db6-11ed-b237-283a4d3b4979',1,'source-extra',NULL,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\�\0\0.\0\0\0E\�}\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0�\�\0\0u0\0\0\�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0�\�\�\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0\�\0\0\��+\0\0 \0IDATx\�\�\��]u}/\�=���\0�**�V�H}��k�	Qni\���\�Aւ%.�U�j\�\Z�\�y�\0+Dj@P��GyBl(�ȋ<H&s\�\�\�\�xr8�ɼ2\����\�̜9sff\�\��\�����{\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`�k�\nh�\�O�X�\�o\�\�˗/�v\�Z+eK\�\�mmŶ\�n�x\�ȑ\�uvv^r\�!��H��!�!�!�!\�\��\r���^z\�իW\�2v\�\�b��v*v\�a����\�\�\�B\�y.[��X�dI�`����\�\���|\�\�2$C2$C2$C2�B��\��ʼy\�\�~ӛ\�\�\��׿�\�cG\�;wn\�\�SO�\�f�m�\�=\�y\�\�d�!�!�!b(f\�\�fϞ�\�������\��\�\Z�>��\�1c\��?��N9\�Ǯ�\�\�Ge�!�!�!B!}\�7��͇\�Ν�\�i\�w\�q\�W}\�\�E\�s��I�\�7?(�{\�b\�\�)ڇ�*F�\�\�\�\�B\�l�M�\�.�+\����t\�I?�2e\�s2�ɐɐɐ18ـ~�x\�\�ə�Ӫ\�\�xeY\�ԯ�Y,�{_�敗k��\\:���\�\��E\�\�k\�\��\�߾�\�?�\�m˝��d�!�!�!B!�\�{\�9r\�\�կ\�90���\�\�ŚUKZ~o\�\�Eg��\'\��r��6\�m3f\�8L��!�!�!�!\�Ћ\�\�欱cǶuu\�\�%\�v��\�M)=\��\�\�\�2�ɐɐɐ��^�r\�\�rK��t�]�џ\�\�sv\�y\�]\�\�ۏ�!dH�dH�dH�d�0\��+V잫\�\��F��{\�]��!dH�dH�d�0\��\�\�\�v7� \r��\�0L��!dH�dH�d�0\��\�\�\�\�\�f���!C\�2(�<v~\�!\�𑯾�@[[{1\�\�\�+\�ڇ[I\�2�!C�B��c۝\�X6��\�\�\�^\�\�c� dB��!@!\�\�S\�8�Q\�\�\�\�ڎW�dB��!@!\�\�j\�\�=zC��\�_��\��\�Ų��[Q\�2�!C�k\��\�/�w1\�\�k�5��t��\�+\�<pu�˞��\�=�6b[+B��!dP�u\�X��X�\�?/=}w�o�\�3\�\���\�c\�?/F﾿�(C2�!C\��I�F3`\�{\�\���e��J�7\���\�\�%\�Z�2$C\�2�\na�[z��@��!d�!\�S�0\�\�����!dB��^gD\0\0\0�0\0\0\0(�\0\0@!\0\0\0[\�\����\�\�\�	\�\��I,8d���;-]�t\�ʕ+�\�Çw\�\�kv\�m�cƌ�w\�ر�0a_[k\0\0�\�4iҞk֬\�\�\�vx�\�\�2�\\F�\�\�r�_\�\'�߻kذaӧN���B�/�\�`�ӗ�\���Y�h\�v�\�q\�Go|\���\�-F�\ZU�\�p[�⧟~zχ~xϻ\�{�Yg�\�\\�\�_�\��\�K�E\0\0�;&N�8��\�\�/ݑ-�2�\\\�*��W�q|���&L�0���\�ӦM��f�\�x\�G^p�?,�\�\�\�pp@1lذW\'�,��\��\�\�AT�|\�\�Ń>��k��\�>�\�Ϟ�lٲ���\�ǭQ\0\0���\�Ha{Ygg籛\�\�G�?wD�\Z���\�)\�^{\�\na6\�ԩS��\��?=\�\�k�\�?ز\0ޘ\�\�\�v\�-��\��\�謒\�a\0\0�ى\'�8���\�Ҳ�ݵz,\�\�;\�\�\�\�\�~w�\�>�;\�s�\�;˗//-ZT̙3��\�{��X�zu\�c\�+\���\'~z0�+�{\��ë\���M�\�\�>W�\��oݢ\�:\�c��\�\�o\�E��\�>{�/�\��a\0\0�^W�W\�̪\0\�@\�\�G]�q\�l�\�-��\�\��\�=���\�o.��\���\�\�\�\�SF��uuY�*�\�o\r�u\�ѽh\�\�ɗΘ1c\�y睷\�Ep\�\�o~s\�\�/~q�ҥK\�?\�\�>i-\0\0\��\���`g�ۯ|\�+�PV\�\"���\����\\ǨRÓ\�b�\�\na6)\�\�{\��糟�l[w�\�]y��\�:kĚ5k��\�~\�6\0\0]9\'����Ҫ\�w\�}�\�\�?�b\��\�\�\�\��������l0\�\n\�^2k֬ksNpO�7\�\�\�	\'��]\�\Zk\0\0�����\�\�9�	\�i�9xKd\�\�\���\�7ә&=Y!L�.�\�\�sW�Z�K\�\�\�My�w\�q\��6M\0\0\�\�\"�,P�\�\�9\'8\�\���\�\�g>\�Ƌ��o�\�.�\�\�ϟFn�4bĈ^�]��r\�\�\��\�7\�.?\�\�+���\�mmmϛ7蓮3g��\�!dB��\�3\��\�\'�0\�\�N�\�J^\�\�\�E�k_�E\�\��Q{(��\�~\���\�׿�\�.�\�Q_ȼ�\�Ç�)\�L�>}N���o�b\�ر/�x\�?hoo��f͚;��\�\�e��\�s\��\��\�}�[�\�O~R�^��^\��\\!��ۋ�|\�#<~\�UW\'�tR�lٲb\�\�\�|﮻\�*\�\�s\�\�O�\�Ok_Ϟ=�\�:�\�\�\�{ꩧ�\�߾x׻\�\�\�ߞ�-\�\�c�=6���\�\�\�#�<R;\�#_\�\�?��?\�Z\�2�����\���m\�7�\�\r\�z~2���=�[Ͽ\������xU\�}\�ٍ�\�\��gZ=&C�J6\�\�k�\�m¦$�\'O��]\�\�\�\��\�7��\�\�\�1k֬\�\�_\�\�g�y���ls\�\�\�ːvhh5o�\�\�\��\�\��o^x\�\���\�\Zx*\�\�\�\����(����4iҞG\�\�\�\nѽ\�\�c��m����\�\�O��Bx {\�\��\��l{�\�\n\��rȚ3f_~��~���/߰�\�7\�\��^R�1~X~���#G\��\�w���7~a�\�,���?�x\��g1��\�\�?��ϯ΍7\�X�{\�\�q\�\��\�lP����\�k�p�\\��VH\�,�\��o\�v*\�E\��i\�j\�G�J�>\�Z)��@\Z\�\�}\�{\�g�\�\�Ng\�\�?�\�W�Z[\���O�_~�&��>\�P%\�~\�ĉŏ�\�ZfR0d\'�\�~�\�:;ҩ\�g\�g럟m��\�,��\�/\�g �\�6k܆��d2\�=Ͽ�\�ۋ\��\�wŕW^�A��|�\�1\��\�}�����\�/�R�;E\Z`��\���e��\"&��V�Z�u��j\�g�^|\�\�E�\��\�y�\�N;m�v�U�L�v\�\�\'o\�\�]p��<i��^��CC+C�:\�/�w\�\�}Y\�u��\��[>ws�R\�$\����\�W\�e�\�\�	e�N(3��<>�����\�P�>_�\\��\�z3fL��m��\�ATk�\���\�PDK�,9��\���β\�S6R\�Hw,�O�o\�O��\�\�\�\r��Ԡ==]h��v�5�i��\�M�\����v\��\���\�����\� ����d�����e�\�R\�k_�<��z\��^\�|�ߓ�@\�ָ�I#\���\�y�\�҈Dv4��\�́d\�\�\�\�w,i�\��SX\�u�s\�\�dG�GvL\�\�\"#\�Y\�y\�\�\�I���{\�ں\��Av\�Y�\�&y,�\�]tQNG�}?Hc�z^/�1�r���$wy\�l����\�\\v\�e<7\�\��D�u:dr�Q\'�<��\�P�g�����MJ;�N��\�t��-�\n\�\�$\�ml��j�d�V\�7P\�v\�9\�\�f\�\�i����y2442�\Zzj��|\���ee��\�;\��\�\�1R2�mՓY\�\�\�HVzL.L5��8�\\�&L�p}Y\�^ۜ�\�ë\�=\�\�^��\��\r�\�\�\na6\��\�\�\�\�jı7e\�~GG\�;\�\�U��O.?�<v\�\�\�\�Z�Y�\�=�9PȒ��LIc�\�$��\�\�w_��\�b�L\�\�N!\��|\�\�\��\�j�kv)r\Z{%\���w\�w|\�c�5�\�\�ci�s�4؍-�$�\�\�\�g\'PN\�d\�Q5\��]١TsF$ӋZ5\��~m��kF��\�\�\�\�]I���\���`zK\�Z��]RLdd���<\0U1�\���.6��%[�e�\�\�M\�\����˿�m\�K.��֓g�yf\�@$�\��\�\�H��d(-\�Y��\�\�\��.C#C͒�\��oL\n\�V3G\"�VN8\�\r��E���\�L�M&\�&���\���\Z9����!\�\�\�\�P�t\�f��=\�\�J�\�6��|\�ɬ�@ʶ��^1�\\N*stRٞ/-�Mo+���d�\\/VOj\�\�i9u���[�JU\��\�˗o��\�\�ސiRe�{ٰ�?�{F�/\��ǧ!+�\�\�\�?����l0?�\�\r\�`z;�z~\Zժ\'�\�G�@i�\Z�C�\�9N#��\�\�T\� 4;�C9��q[w5\"�ߗǲé\n\�4\��̎$;�_)ΫG\�t�\�\�\�.\�!#\�Moh��tܸq[�3\�\��\�\0!\�w�}\�����\�j�f��\�_�\��]�\�</8\�2�\�\�AgJZfd\�Γd&A:U\�X\�`��G;�[\�W\�Ѫw]�N;T\�Z:ú��\�XȤMH\�\�\�f4�L��l�j\�}ڨl�\�\�d�\�[o�u}ga��$�=˨N\�=\Z\�\�\r\�5\�5JZu�5N;ޒ�ď~\��\�\�LW#\�[��\��rOf����t\����\�P\�g|�\��z��\�\�{�]�4��n\na6\�\�+�\�\�bM�\�\�\�·���ŭhU\�ҏ~\��}�K3*���\���F9\�3�n��F�����<�nz\�=\rx�ѕ\�4қ�@%#\�i\��\�O��V@7\�\�tFx�\�j\�Q\�6?\�W��UmgU]\�*�\�\�tt\�bO]�\�o[�]q\����!�R�\nb�w��S\�\�\��\�6ٜ\���d���<�\�\�\�s Q�\�\�0�.�\�8\�\�\�1���\ZX\�P\�o�{u\�[㹼�2e�C�P�u\�T�\�q\�}f�\� �\�v�\�\�ꂀy<�KΪ��l\�\�$\Z�\�9\�}V��l\�E�a���\�\�\�J\�\�ՀGOg������\�omZ;ܞ�eRWr+�\�]�B�\r�1bM��ޗ\�\�a�V\\�\�\��r��\�i$::K\�I�\r�Y�;�\���x�F\Z\�V\�\�\ZN��\���\'=�iu�\�|\�s3��Ͽ��ﯟ��\�r*\�y\�\��*��}9\'\�\�\�\�\����\�h\�f\�]�K\�\�s~O�\�\�\�\�\�d\�;���\�mi��4T2�\�\�\\T&뿚�rfXd\�m�\�\�\�f\�	n�<d�W.��dZ~:\\���\�\�\\�*wͣ.�ku>\��v(r.o�Q\�\�3�ju\�ZFL�\�\�\�dT�\�\��\�j2�\�|\��3fԶQ�T�}\�n\�\��Z���)24x3�\ZZj%���)R����\\��4�Ƭd[w��j �9��L�\�L��\�J\�\�\�SYi%\��\��j�fhm��-2�\�k\�\�ҥK{�^�|��\�\na�{J^.���ri_\�T�\�M�`ڴi\�\�\��:a�o\�\�͘y+y�nS~V~\�c�ʏ?+��\�\��ӜS\�\�;�\�o\�\�F\�H\�ls#�+\"6^q��?W��FL�d�Mv��L�ι\�\��nU�\�9\0Ɏ ӦwBy�\��VSz*�rT]x+w5R�\�J\Z�\�!\�T�@\��6Gv,ӧOR\��:G*W\�\��`v��\�\�M�\�\�\�L�\�\�g�\�4Ȭ���l\�M\�J/{.�ּ}[4\�P��CU�ή\�h]f�4N�Ϻ\�s2M��\�.�F\�ܪ�I\'\\2\�\\\�\�\��L�nu.ic�]|\����\r�i��V��%_�\�knN\�qH.��\�jT��s��\�\�\�\�f��;Fc��5d���i[\�>�\���*G\�ⷽ�\�ޜ�r=<T~o�<7\��\�,�\��\r*�i\�y�M\�\�֗�\�\�ٳ�)\�\�\��Jz;\�eۆ���\0\�\�r�f\�m��Y\�\�/\�7d\�\��\�2�G��w1�ϙ��\�\�y\�S�<�\�f�\�s.]8\�Hg��\�j48�תz�\��\�\�]9��\�	U�h��>��\�4O;k<x��Q[�\n\�u�\�r\"?�\�6v�\��_2\�j=W\�\"Ӳ6\�~|\�O5M1#6�\�\\\�4vҤ\�=&\�`�|%�9�\�L��L�\�\�\Z��)C#C\�\�9-�*T3�����\�9P\�\�ұ�\�(��G\n�\�\�6\�m,\\X�\�kf�e�t��է}��\��L\�79�L\��O}J;4\�2�\Z����\�ȶLGf$Si7\"�\�&��M��M\�)ܘ�d���D	\��\�x\�,������\�\�.\�Sy�\�\��E\�U!�\�\\\�\"���i�遭}E+�{X���\�C=th\�(�\�\�\�,��\��\�\�MCc]�\�\\\�o\�\�!nlD8�e5=\�\�n�@T�}�\�\�4\�m\Z�\�+\'V\��\�\�gt7�w\Z\�LW�\n\�\\L\"\��6ަ)��\�\�\�\�5+]i�S��h��\�4N�\�k�\�6\�xn��A�n8��\�\�e�T#)9\�k܎\�I�ʦ�]]Ԩ\�\�#\�\�\�\� \�^��\�G\�\�\"\ryNr�s@�M�\�\�$U6\��\�\\>\Zʹ\�Yo\�\�\�\�\�KkS\�\�9�\�U�e��.ʖv$?[.\�SE�\�\�\�Hڠ�\�u�˴Gy\��T�z\�6ϨP\�\���cN�o��CC\�x�Y�\�x����r�B8mDf�UYz-Y\�\�R\�\�\���ט�%�U�d�\�\�\�Ep�2Tͷ�\�?�^�\�\"�=\\s4~y�־�\�=�\�9\\5k֬sO9\�m[�\�\���]\�o�~�)\Z凙\�\�\�\�\r�{���\�j��k�\Z\�jzX��\�\�\�R�\�l\�1OC\�8��1ρHz-�\�\�햲㨮:�+I��n�_qX\�7\�\"W�\�4�n\�f�\�\�\�t\�L�\�y���y�\�\�ߒY5:\�|!��E_g��o���SӋ�eS�\r��l�Uvr�P\���CO�|OA�ϫ)�)���\�\�;o�k���\�q�T]Ħz~�\��v(j�#v��\�3\�/#r\�\�qeg\Z\�\��\�߭lS\�>#:)�S\�f4���\�@:tr._.rS\�/m^\n\��\�t\n6�\�\�\�̐vh\�\�\�Z�\�\'�m�S+\�n4\�5R\Zo�\�Z��m�6�;YI!\�\�|ޡ���\�P�\�\�\�qq>\�1\�/�X�3�7j�\�3\�\�\�\�w�ҵ\�~�\�\��v\�i\�\�Խ\0{�g\�\�/�x\�\�\�\�\�\�\��\�	\�mkk�S�Q�ۜ�βq\�\�\�=1�Twn�^��\�\�T�<\�\�\�6vnJwo\���\�y-����\�\Z7n\\\�P\�P8��\�nMdh`�C=�=Zm\�\�d@�dH;$C�2�24q\�\�e}T>?\�\�I�&\��\�X\�\Z��l\�\�Y~���=�F�{��%K�|\�UWM9\���\�\�Q\�\�/�|x�ƹ�?�\�\�\r\�\�\"\�\�hD7\���5ԛjĻۀw\�\�u \�\�m\��\�\nw�[�=Zm\�-\����!\�\�ʠ\�п�K�\�l�t�\�\�\�O?�tq\�M7����=�m0�\�voŞ7mڴ,^����o�yUo���ؾcŊ\�͛7\�Z\0��Y{�f\�\�\\6J̭�zBn���H\�u\�\�,��B���\\�\�\�n�a\�O<\�\��?{\�\�9�\�r\�~mmm�Μ9s�5\0\0C\�)E��Fs\�\�-��\��oq1�\"8EuF�\�\r�\�C!\�K�O�>�,�?u\�.}��\�{\��,X0��\�\�\�\�\���iӦ=fm\0�Ю=\�\� W@���\�w.\�\�Pľ&����C=�����\�`�=½\�k���\�\�/�q\�9\�\�S#\�\�\�<z\�gv�^��\�2�S�e\0\0 �G�\�Ԫ\�\�pY�S�N�]\��;\�\\+?\�XD�E\�9��\�p��^V\�;\'�x\�\�\�\�?��}\�#Y=~��\�m\��\�|�\�ߞq\�m�T\�eпc\�\0\0͵G�\�emmm;\�\�\�\\\�*\�\�\�=\�\�\���s\�\�vء6�9\�o\�\�<k֬,��V�j�jv\�\�\���X{(��@zg&L�p\�\r7\�\�\�{\�i�\r?�\��\�\�\�\�\�u\�]wL�<y\�2�;��>��\�\�\0\0@��GY7L�n���8\�n�p+�E\�9\'x����\�#��_~8�\�\�_|\�F�Q\�\�>O~�\�;�\�-o\�~\�]w\�cԨQ\�W�X\�\�\�ŋ�=\�\�O\�q\��{\�}֬Y�)\��<��).�\0\0t�\��ڣ,fO/\�#^C\�wg�|{�\�\n\�\�u\�\�&M��磏>z�#�<\�\�\�냋us��=�/�咉��\�\� \0\0lV\�v\�\�\�˂��=ƖKn\�iԹ\�\�C�\�P\���S�>S~���\0\0\0�=���F\0\0Cf�T!\0\00�d�\���Ǯ,\�M�ޘ\�\�\�P(�\��o\�r9�\�c��;�\\.\�Fp\0\0>\\�;\�\�\�z�1��\�8�a[/���/�Ճ�s��Ɓ\�[���\\rۤ[ꏟ].\�NP϶��\�vX�Lo��\�\�׃\0\0Е�/�˜z��^G���{Ջ\�,?�?Q�g�w�̬�O�|��FQ\�U�1k\���\�\"hE�X>�\\��wB�|�\\\�-�\�\�\��\�\�\0\0\�IDAT\�V)\0\0\�\�\�u�hg�\�\�\�b�U\�Q��\\�o�\�X�ڝZ.\�ƕdj\��0��qa�\�}�^���xv=�)�O,���\�\0\0�F\�k�\�\�\"���׋\�\�-6^/��\�o�������\�M���b\�t�L�ޣ�}/K\�\�\�\�r��Ԍ�\�^��\�B=�\�\�!L \�?\0\0�ٗ\�\�\�\�z-\�X��Y�~F���;�U�nvj\�\�-\�5�B�\�-+~?ax=TU�\�	3���ѧ\�\�vN�n$x\���ǿj�\0\0-\\T�9r~pf��^�t��\�Ly�`\�\���\\�+�i\�\�d�n .�To\Z\�+\�\�辵W��\�T\�|T�n��gź��Q\r\�ޅ�f\0\0�\�W\�\�\�R�.�\�U=1�\��\�Ջ\�7����5F��ֻ�u\��n̔bݨo�Q��y^�\Z�\0\0\�§�ug���yz\�F\���3|M�\�[lY�����ؿ�\�S�\�@^\�\�B6E\�!\�rA�޷!�;[�\0\0@n���aņ�b\�PW\�>\�_��Q]\�7\���?w\�`\\I\n\�1�Xw�\�M��Q\�0^^�\�\��|�\0�\�\��N\0\0��5}}^\�\�_m(v�7}ob\�\�w֕�\�]\�\�\�M_�l\�ܙM__bu\0\0�`Ȝ�\�bY\0\0\0)\na�M[[[\�ڵk����:dB�dH�dH�PC/\�f�m�Z�t�1\0�\�a^�\�~B��!�!�!\�Ћ:::~�x\�b]��\�\�?�?ū\�G�!d�!�!B!=i\�\�\�ߝ;w\�\�\�\�N+��Y�`��\�\�\�eB�dH�dH�PC/:�\�X�v\�}\�>�\�\Zk��<�䓿\�\�\�3nܸ�eB�dH�dH�PC/{\�WN�3g\�\�%K�X�`\�ҥOΝ;\�\�\��B�dH�dH�dH�*�Y\��)S�,<�\�\�}\��\�i��F�9R\�L\�5��<�\���\�O?}\�\�G\�)CȐɐɐ\�\na\�#W]u\�\�>�\�?�`��wvv\�-w\0����Y1�g\�\�?��\'�|r\�4�Gu\�M2�ɐɐɐ1�xw1`\�r\�-����_<lذw\�u\�\'w/\�\�.{��\r�v�L�C]�hѢ�\�͛\�/��\�ڵk�\�\��c�9\�aB�dH�dH�dH�PC?�\�\�[lkk�h�\�\�rp���V�X.�\�@�\�\0\�\�AȐɐɐ\�C=C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\��;LV2\�\\)\0\0\0\0IEND�B`�',NULL),('ecc2862c-2fe9-11ed-aa68-283a4d3b4979',1,'请假流程.Leave.png','ecc2862b-2fe9-11ed-aa68-283a4d3b4979',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\�\0\0.\0\0\0E\�}\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0�\�\0\0u0\0\0\�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0�\�\�\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0\�\0\0\��+\0\0 \0IDATx\�\�\��]u}/\�=���\0�**�V�H}��k�	Qni\���\�Aւ%.�U�j\�\Z�\�y�\0+Dj@P��GyBl(�ȋ<H&s\�\�\�\�xr8�ɼ2\����\�̜9sff\�\��\�����{\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`�k�\nh�\�O�X�\�o\�\�˗/�v\�Z+eK\�\�mmŶ\�n�x\�ȑ\�uvv^r\�!��H��!�!�!�!\�\��\r���^z\�իW\�2v\�\�b��v*v\�a����\�\�\�B\�y.[��X�dI�`����\�\���|\�\�2$C2$C2$C2�B��\��ʼy\�\�~ӛ\�\�\��׿�\�cG\�;wn\�\�SO�\�f�m�\�=\�y\�\�d�!�!�!b(f\�\�fϞ�\�������\��\�\Z�>��\�1c\��?��N9\�Ǯ�\�\�Ge�!�!�!B!}\�7��͇\�Ν�\�i\�w\�q\�W}\�\�E\�s��I�\�7?(�{\�b\�\�)ڇ�*F�\�\�\�\�B\�l�M�\�.�+\����t\�I?�2e\�s2�ɐɐɐ18ـ~�x\�\�ə�Ӫ\�\�xeY\�ԯ�Y,�{_�敗k��\\:���\�\��E\�\�k\�\��\�߾�\�?�\�m˝��d�!�!�!B!�\�{\�9r\�\�կ\�90���\�\�ŚUKZ~o\�\�Eg��\'\��r��6\�m3f\�8L��!�!�!�!\�Ћ\�\�欱cǶuu\�\�%\�v��\�M)=\��\�\�\�2�ɐɐɐ��^�r\�\�rK��t�]�џ\�\�sv\�y\�]\�\�ۏ�!dH�dH�dH�d�0\��+V잫\�\��F��{\�]��!dH�dH�d�0\��\�\�\�v7� \r��\�0L��!dH�dH�d�0\��\�\�\�\�\�f���!C\�2(�<v~\�!\�𑯾�@[[{1\�\�\�+\�ڇ[I\�2�!C�B��c۝\�X6��\�\�\�^\�\�c� dB��!@!\�\�S\�8�Q\�\�\�\�ڎW�dB��!@!\�\�j\�\�=zC��\�_��\��\�Ų��[Q\�2�!C�k\��\�/�w1\�\�k�5��t��\�+\�<pu�˞��\�=�6b[+B��!dP�u\�X��X�\�?/=}w�o�\�3\�\���\�c\�?/F﾿�(C2�!C\��I�F3`\�{\�\���e��J�7\���\�\�%\�Z�2$C\�2�\na�[z��@��!d�!\�S�0\�\�����!dB��^gD\0\0\0�0\0\0\0(�\0\0@!\0\0\0[\�\����\�\�\�	\�\��I,8d���;-]�t\�ʕ+�\�Çw\�\�kv\�m�cƌ�w\�ر�0a_[k\0\0�\�4iҞk֬\�\�\�vx�\�\�2�\\F�\�\�r�_\�\'�߻kذaӧN���B�/�\�`�ӗ�\���Y�h\�v�\�q\�Go|\���\�-F�\ZU�\�p[�⧟~zχ~xϻ\�{�Yg�\�\\�\�_�\��\�K�E\0\0�;&N�8��\�\�/ݑ-�2�\\\�*��W�q|���&L�0���\�ӦM��f�\�x\�G^p�?,�\�\�\�pp@1lذW\'�,��\��\�\�AT�|\�\�Ń>��k��\�>�\�Ϟ�lٲ���\�ǭQ\0\0���\�Ha{Ygg籛\�\�G�?wD�\Z���\�)\�^{\�\na6\�ԩS��\��?=\�\�k�\�?ز\0ޘ\�\�\�v\�-��\��\�謒\�a\0\0�ى\'�8���\�Ҳ�ݵz,\�\�;\�\�\�\�\�~w�\�>�;\�s�\�;˗//-ZT̙3��\�{��X�zu\�c\�+\���\'~z0�+�{\��ë\���M�\�\�>W�\��oݢ\�:\�c��\�\�o\�E��\�>{�/�\��a\0\0�^W�W\�̪\0\�@\�\�G]�q\�l�\�-��\�\��\�=���\�o.��\���\�\�\�\�SF��uuY�*�\�o\r�u\�ѽh\�\�ɗΘ1c\�y睷\�Ep\�\�o~s\�\�/~q�ҥK\�?\�\�>i-\0\0\��\���`g�ۯ|\�+�PV\�\"���\����\\ǨRÓ\�b�\�\na6)\�\�{\��糟�l[w�\�]y��\�:kĚ5k��\�~\�6\0\0]9\'����Ҫ\�w\�}�\�\�?�b\��\�\�\�\��������l0\�\n\�^2k֬ksNpO�7\�\�\�	\'��]\�\Zk\0\0�����\�\�9�	\�i�9xKd\�\�\���\�7ә&=Y!L�.�\�\�sW�Z�K\�\�\�My�w\�q\��6M\0\0\�\�\"�,P�\�\�9\'8\�\���\�\�g>\�Ƌ��o�\�.�\�\�ϟFn�4bĈ^�]��r\�\�\��\�7\�.?\�\�+���\�mmmϛ7蓮3g��\�!dB��\�3\��\�\'�0\�\�N�\�J^\�\�\�E�k_�E\�\��Q{(��\�~\���\�׿�\�.�\�Q_ȼ�\�Ç�)\�L�>}N���o�b\�ر/�x\�?hoo��f͚;��\�\�e��\�s\��\��\�}�[�\�O~R�^��^\��\\!��ۋ�|\�#<~\�UW\'�tR�lٲb\�\�\�|﮻\�*\�\�s\�\�O�\�Ok_Ϟ=�\�:�\�\�\�{ꩧ�\�߾x׻\�\�\�ߞ�-\�\�c�=6���\�\�\�#�<R;\�#_\�\�?��?\�Z\�2�����\���m\�7�\�\r\�z~2���=�[Ͽ\������xU\�}\�ٍ�\�\��gZ=&C�J6\�\�k�\�m¦$�\'O��]\�\�\�\��\�7��\�\�\�1k֬\�\�_\�\�g�y���ls\�\�\�ːvhh5o�\�\�\��\�\��o^x\�\���\�\Zx*\�\�\�\����(����4iҞG\�\�\�\nѽ\�\�c��m����\�\�O��Bx {\�\��\��l{�\�\n\��rȚ3f_~��~���/߰�\�7\�\��^R�1~X~���#G\��\�w���7~a�\�,���?�x\��g1��\�\�?��ϯ΍7\�X�{\�\�q\�\��\�lP����\�k�p�\\��VH\�,�\��o\�v*\�E\��i\�j\�G�J�>\�Z)��@\Z\�\�}\�{\�g�\�\�Ng\�\�?�\�W�Z[\���O�_~�&��>\�P%\�~\�ĉŏ�\�ZfR0d\'�\�~�\�:;ҩ\�g\�g럟m��\�,��\�/\�g �\�6k܆��d2\�=Ͽ�\�ۋ\��\�wŕW^�A��|�\�1\��\�}�����\�/�R�;E\Z`��\���e��\"&��V�Z�u��j\�g�^|\�\�E�\��\�y�\�N;m�v�U�L�v\�\�\'o\�\�]p��<i��^��CC+C�:\�/�w\�\�}Y\�u��\��[>ws�R\�$\����\�W\�e�\�\�	e�N(3��<>�����\�P�>_�\\��\�z3fL��m��\�ATk�\���\�PDK�,9��\���β\�S6R\�Hw,�O�o\�O��\�\�\�\r��Ԡ==]h��v�5�i��\�M�\����v\��\���\�����\� ����d�����e�\�R\�k_�<��z\��^\�|�ߓ�@\�ָ�I#\���\�y�\�҈Dv4��\�́d\�\�\�\�w,i�\��SX\�u�s\�\�dG�GvL\�\�\"#\�Y\�y\�\�\�I���{\�ں\��Av\�Y�\�&y,�\�]tQNG�}?Hc�z^/�1�r���$wy\�l����\�\\v\�e<7\�\��D�u:dr�Q\'�<��\�P�g�����MJ;�N��\�t��-�\n\�\�$\�ml��j�d�V\�7P\�v\�9\�\�f\�\�i����y2442�\Zzj��|\���ee��\�;\��\�\�1R2�mՓY\�\�\�HVzL.L5��8�\\�&L�p}Y\�^ۜ�\�ë\�=\�\�^��\��\r�\�\�\na6\��\�\�\�\�jı7e\�~GG\�;\�\�U��O.?�<v\�\�\�\�Z�Y�\�=�9PȒ��LIc�\�$��\�\�w_��\�b�L\�\�N!\��|\�\�\��\�j�kv)r\Z{%\���w\�w|\�c�5�\�\�ci�s�4؍-�$�\�\�\�g\'PN\�d\�Q5\��]١TsF$ӋZ5\��~m��kF��\�\�\�\�]I���\���`zK\�Z��]RLdd���<\0U1�\���.6��%[�e�\�\�M\�\����˿�m\�K.��֓g�yf\�@$�\��\�\�H��d(-\�Y��\�\�\��.C#C͒�\��oL\n\�V3G\"�VN8\�\r��E���\�L�M&\�&���\���\Z9����!\�\�\�\�P�t\�f��=\�\�J�\�6��|\�ɬ�@ʶ��^1�\\N*stRٞ/-�Mo+���d�\\/VOj\�\�i9u���[�JU\��\�˗o��\�\�ސiRe�{ٰ�?�{F�/\��ǧ!+�\�\�\�?����l0?�\�\r\�`z;�z~\Zժ\'�\�G�@i�\Z�C�\�9N#��\�\�T\� 4;�C9��q[w5\"�ߗǲé\n\�4\��̎$;�_)ΫG\�t�\�\�\�.\�!#\�Moh��tܸq[�3\�\��\�\0!\�w�}\�����\�j�f��\�_�\��]�\�</8\�2�\�\�AgJZfd\�Γd&A:U\�X\�`��G;�[\�W\�Ѫw]�N;T\�Z:ú��\�XȤMH\�\�\�f4�L��l�j\�}ڨl�\�\�d�\�[o�u}ga��$�=˨N\�=\Z\�\�\r\�5\�5JZu�5N;ޒ�ď~\��\�\�LW#\�[��\��rOf����t\����\�P\�g|�\��z��\�\�{�]�4��n\na6\�\�+�\�\�bM�\�\�\�·���ŭhU\�ҏ~\��}�K3*���\���F9\�3�n��F�����<�nz\�=\rx�ѕ\�4қ�@%#\�i\��\�O��V@7\�\�tFx�\�j\�Q\�6?\�W��UmgU]\�*�\�\�tt\�bO]�\�o[�]q\����!�R�\nb�w��S\�\�\��\�6ٜ\���d���<�\�\�\�s Q�\�\�0�.�\�8\�\�\�1���\ZX\�P\�o�{u\�[㹼�2e�C�P�u\�T�\�q\�}f�\� �\�v�\�\�ꂀy<�KΪ��l\�\�$\Z�\�9\�}V��l\�E�a���\�\�\�J\�\�ՀGOg������\�omZ;ܞ�eRWr+�\�]�B�\r�1bM��ޗ\�\�a�V\\�\�\��r��\�i$::K\�I�\r�Y�;�\���x�F\Z\�V\�\�\ZN��\���\'=�iu�\�|\�s3��Ͽ��ﯟ��\�r*\�y\�\��*��}9\'\�\�\�\�\����\�h\�f\�]�K\�\�s~O�\�\�\�\�\�d\�;���\�mi��4T2�\�\�\\T&뿚�rfXd\�m�\�\�\�f\�	n�<d�W.��dZ~:\\���\�\�\\�*wͣ.�ku>\��v(r.o�Q\�\�3�ju\�ZFL�\�\�\�dT�\�\��\�j2�\�|\��3fԶQ�T�}\�n\�\��Z���)24x3�\ZZj%���)R����\\��4�Ƭd[w��j �9��L�\�L��\�J\�\�\�SYi%\��\��j�fhm��-2�\�k\�\�ҥK{�^�|��\�\na�{J^.���ri_\�T�\�M�`ڴi\�\�\��:a�o\�\�͘y+y�nS~V~\�c�ʏ?+��\�\��ӜS\�\�;�\�o\�\�F\�H\�ls#�+\"6^q��?W��FL�d�Mv��L�ι\�\��nU�\�9\0Ɏ ӦwBy�\��VSz*�rT]x+w5R�\�J\Z�\�!\�T�@\��6Gv,ӧOR\��:G*W\�\��`v��\�\�M�\�\�\�L�\�\�g�\�4Ȭ���l\�M\�J/{.�ּ}[4\�P��CU�ή\�h]f�4N�Ϻ\�s2M��\�.�F\�ܪ�I\'\\2\�\\\�\�\��L�nu.ic�]|\����\r�i��V��%_�\�knN\�qH.��\�jT��s��\�\�\�\�f��;Fc��5d���i[\�>�\���*G\�ⷽ�\�ޜ�r=<T~o�<7\��\�,�\��\r*�i\�y�M\�\�֗�\�\�ٳ�)\�\�\��Jz;\�eۆ���\0\�\�r�f\�m��Y\�\�/\�7d\�\��\�2�G��w1�ϙ��\�\�y\�S�<�\�f�\�s.]8\�Hg��\�j48�תz�\��\�\�]9��\�	U�h��>��\�4O;k<x��Q[�\n\�u�\�r\"?�\�6v�\��_2\�j=W\�\"Ӳ6\�~|\�O5M1#6�\�\\\�4vҤ\�=&\�`�|%�9�\�L��L�\�\�\Z��)C#C\�\�9-�*T3�����\�9P\�\�ұ�\�(��G\n�\�\�6\�m,\\X�\�kf�e�t��է}��\��L\�79�L\��O}J;4\�2�\Z����\�ȶLGf$Si7\"�\�&��M��M\�)ܘ�d���D	\��\�x\�,������\�\�.\�Sy�\�\��E\�U!�\�\\\�\"���i�遭}E+�{X���\�C=th\�(�\�\�\�,��\��\�\�MCc]�\�\\\�o\�\�!nlD8�e5=\�\�n�@T�}�\�\�4\�m\Z�\�+\'V\��\�\�gt7�w\Z\�LW�\n\�\\L\"\��6ަ)��\�\�\�\�5+]i�S��h��\�4N�\�k�\�6\�xn��A�n8��\�\�e�T#)9\�k܎\�I�ʦ�]]Ԩ\�\�#\�\�\�\� \�^��\�G\�\�\"\ryNr�s@�M�\�\�$U6\��\�\\>\Zʹ\�Yo\�\�\�\�\�KkS\�\�9�\�U�e��.ʖv$?[.\�SE�\�\�\�Hڠ�\�u�˴Gy\��T�z\�6ϨP\�\���cN�o��CC\�x�Y�\�x����r�B8mDf�UYz-Y\�\�R\�\�\���ט�%�U�d�\�\�\�Ep�2Tͷ�\�?�^�\�\"�=\\s4~y�־�\�=�\�9\\5k֬sO9\�m[�\�\���]\�o�~�)\Z凙\�\�\�\�\r�{���\�j��k�\Z\�jzX��\�\�\�R�\�l\�1OC\�8��1ρHz-�\�\�햲㨮:�+I��n�_qX\�7\�\"W�\�4�n\�f�\�\�\�t\�L�\�y���y�\�\�ߒY5:\�|!��E_g��o���SӋ�eS�\r��l�Uvr�P\���CO�|OA�ϫ)�)���\�\�;o�k���\�q�T]Ħz~�\��v(j�#v��\�3\�/#r\�\�qeg\Z\�\��\�߭lS\�>#:)�S\�f4���\�@:tr._.rS\�/m^\n\��\�t\n6�\�\�\�̐vh\�\�\�Z�\�\'�m�S+\�n4\�5R\Zo�\�Z��m�6�;YI!\�\�|ޡ���\�P�\�\�\�qq>\�1\�/�X�3�7j�\�3\�\�\�\�w�ҵ\�~�\�\��v\�i\�\�Խ\0{�g\�\�/�x\�\�\�\�\�\�\��\�	\�mkk�S�Q�ۜ�βq\�\�\�=1�Twn�^��\�\�T�<\�\�\�6vnJwo\���\�y-����\�\Z7n\\\�P\�P8��\�nMdh`�C=�=Zm\�\�d@�dH;$C�2�24q\�\�e}T>?\�\�I�&\��\�X\�\Z��l\�\�Y~���=�F�{��%K�|\�UWM9\���\�\�Q\�\�/�|x�ƹ�?�\�\�\r\�\�\"\�\�hD7\���5ԛjĻۀw\�\�u \�\�m\��\�\nw�[�=Zm\�-\����!\�\�ʠ\�п�K�\�l�t�\�\�\�O?�tq\�M7����=�m0�\�voŞ7mڴ,^����o�yUo���ؾcŊ\�͛7\�Z\0��Y{�f\�\�\\6J̭�zBn���H\�u\�\�,��B���\\�\�\�n�a\�O<\�\��?{\�\�9�\�r\�~mmm�Μ9s�5\0\0C\�)E��Fs\�\�-��\��oq1�\"8EuF�\�\r�\�C!\�K�O�>�,�?u\�.}��\�{\��,X0��\�\�\�\�\���iӦ=fm\0�Ю=\�\� W@���\�w.\�\�Pľ&����C=�����\�`�=½\�k���\�\�/�q\�9\�\�S#\�\�\�<z\�gv�^��\�2�S�e\0\0 �G�\�Ԫ\�\�pY�S�N�]\��;\�\\+?\�XD�E\�9��\�p��^V\�;\'�x\�\�\�\�?��}\�#Y=~��\�m\��\�|�\�ߞq\�m�T\�eпc\�\0\0͵G�\�emmm;\�\�\�\\\�*\�\�\�=\�\�\���s\�\�vء6�9\�o\�\�<k֬,��V�j�jv\�\�\���X{(��@zg&L�p\�\r7\�\�\�{\�i�\r?�\��\�\�\�\�\�u\�]wL�<y\�2�;��>��\�\�\0\0@��GY7L�n���8\�n�p+�E\�9\'x����\�#��_~8�\�\�_|\�F�Q\�\�>O~�\�;�\�-o\�~\�]w\�cԨQ\�W�X\�\�\�ŋ�=\�\�O\�q\��{\�}֬Y�)\��<��).�\0\0t�\��ڣ,fO/\�#^C\�wg�|{�\�\n\�\�u\�\�&M��磏>z�#�<\�\�\�냋us��=�/�咉��\�\� \0\0lV\�v\�\�\�˂��=ƖKn\�iԹ\�\�C�\�P\���S�>S~���\0\0\0�=���F\0\0Cf�T!\0\00�d�\���Ǯ,\�M�ޘ\�\�\�P(�\��o\�r9�\�c��;�\\.\�Fp\0\0>\\�;\�\�\�z�1��\�8�a[/���/�Ճ�s��Ɓ\�[���\\rۤ[ꏟ].\�NP϶��\�vX�Lo��\�\�׃\0\0Е�/�˜z��^G���{Ջ\�,?�?Q�g�w�̬�O�|��FQ\�U�1k\���\�\"hE�X>�\\��wB�|�\\\�-�\�\�\��\�\�\0\0\�IDAT\�V)\0\0\�\�\�u�hg�\�\�\�b�U\�Q��\\�o�\�X�ڝZ.\�ƕdj\��0��qa�\�}�^���xv=�)�O,���\�\0\0�F\�k�\�\�\"���׋\�\�-6^/��\�o�������\�M���b\�t�L�ޣ�}/K\�\�\�\�r��Ԍ�\�^��\�B=�\�\�!L \�?\0\0�ٗ\�\�\�\�z-\�X��Y�~F���;�U�nvj\�\�-\�5�B�\�-+~?ax=TU�\�	3���ѧ\�\�vN�n$x\���ǿj�\0\0-\\T�9r~pf��^�t��\�Ly�`\�\���\\�+�i\�\�d�n .�To\Z\�+\�\�辵W��\�T\�|T�n��gź��Q\r\�ޅ�f\0\0�\�W\�\�\�R�.�\�U=1�\��\�Ջ\�7����5F��ֻ�u\��n̔bݨo�Q��y^�\Z�\0\0\�§�ug���yz\�F\���3|M�\�[lY�����ؿ�\�S�\�@^\�\�B6E\�!\�rA�޷!�;[�\0\0@n���aņ�b\�PW\�>\�_��Q]\�7\���?w\�`\\I\n\�1�Xw�\�M��Q\�0^^�\�\��|�\0�\�\��N\0\0��5}}^\�\�_m(v�7}ob\�\�w֕�\�]\�\�\�M_�l\�ܙM__bu\0\0�`Ȝ�\�bY\0\0\0)\na�M[[[\�ڵk����:dB�dH�dH�PC/\�f�m�Z�t�1\0�\�a^�\�~B��!�!�!\�Ћ:::~�x\�b]��\�\�?�?ū\�G�!d�!�!B!=i\�\�\�ߝ;w\�\�\�\�N+��Y�`��\�\�\�eB�dH�dH�PC/:�\�X�v\�}\�>�\�\Zk��<�䓿\�\�\�3nܸ�eB�dH�dH�PC/{\�WN�3g\�\�%K�X�`\�ҥOΝ;\�\�\��B�dH�dH�dH�*�Y\��)S�,<�\�\�}\��\�i��F�9R\�L\�5��<�\���\�O?}\�\�G\�)CȐɐɐ\�\na\�#W]u\�\�>�\�?�`��wvv\�-w\0����Y1�g\�\�?��\'�|r\�4�Gu\�M2�ɐɐɐ1�xw1`\�r\�-����_<lذw\�u\�\'w/\�\�.{��\r�v�L�C]�hѢ�\�͛\�/��\�ڵk�\�\��c�9\�aB�dH�dH�dH�PC?�\�\�[lkk�h�\�\�rp���V�X.�\�@�\�\0\�\�AȐɐɐ\�C=C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\��;LV2\�\\)\0\0\0\0IEND�B`�',0),('ecc2862d-2fe9-11ed-aa68-283a4d3b4979',1,'请假流程.bpmn20.xml','ecc2862b-2fe9-11ed-aa68-283a4d3b4979',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<bpmn2:definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmn2=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <bpmn2:process id=\"Leave\" name=\"请假申请流程\" isExecutable=\"true\">\n    <bpmn2:startEvent id=\"sid-3AAF069C-9D1F-4109-B5D0-F6F48FD36F44\" name=\"开始\">\n      <bpmn2:outgoing>sid-2AEF1531-8C04-4774-82C7-82ED3A7B1C6B</bpmn2:outgoing>\n    </bpmn2:startEvent>\n    <bpmn2:userTask id=\"sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7\" name=\"直属领导审批\"></bpmn2:userTask>\n    <bpmn2:sequenceFlow id=\"sid-2AEF1531-8C04-4774-82C7-82ED3A7B1C6B\" sourceRef=\"sid-3AAF069C-9D1F-4109-B5D0-F6F48FD36F44\" targetRef=\"sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7\"></bpmn2:sequenceFlow>\n    <bpmn2:userTask id=\"sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929\" name=\"部门经理审批\"></bpmn2:userTask>\n    <bpmn2:sequenceFlow id=\"sid-D204CAAD-4C7D-4ADB-8C4A-DDCBBF9258AC\" sourceRef=\"sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7\" targetRef=\"sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929\"></bpmn2:sequenceFlow>\n    <bpmn2:userTask id=\"sid-95041659-921C-4647-AA7E-007DD53297BA\" name=\"人事专员审批\"></bpmn2:userTask>\n    <bpmn2:sequenceFlow id=\"sid-69022BEB-06E9-4225-9AB6-D86BEE5B6642\" sourceRef=\"sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929\" targetRef=\"sid-95041659-921C-4647-AA7E-007DD53297BA\"></bpmn2:sequenceFlow>\n    <bpmn2:userTask id=\"sid-E6384472-DFD1-4776-83CB-1F8733961BEE\" name=\"人事经理审批\"></bpmn2:userTask>\n    <bpmn2:sequenceFlow id=\"sid-D929EED9-94E8-4398-8344-97AD26547CA5\" sourceRef=\"sid-95041659-921C-4647-AA7E-007DD53297BA\" targetRef=\"sid-E6384472-DFD1-4776-83CB-1F8733961BEE\"></bpmn2:sequenceFlow>\n    <bpmn2:userTask id=\"sid-2B5363F4-D5A0-41C4-B626-E497657D21E4\" name=\"总经理审批\"></bpmn2:userTask>\n    <bpmn2:sequenceFlow id=\"sid-4E35F3DB-BF02-4697-9781-858C5929378A\" sourceRef=\"sid-E6384472-DFD1-4776-83CB-1F8733961BEE\" targetRef=\"sid-2B5363F4-D5A0-41C4-B626-E497657D21E4\"></bpmn2:sequenceFlow>\n    <bpmn2:endEvent id=\"sid-C9AF2295-51A5-44C8-AF20-AA44B6446843\" name=\"结束\">\n      <bpmn2:incoming>sid-B27E825E-E313-4159-B323-7CB877EEEC17</bpmn2:incoming>\n    </bpmn2:endEvent>\n    <bpmn2:sequenceFlow id=\"sid-B27E825E-E313-4159-B323-7CB877EEEC17\" sourceRef=\"sid-2B5363F4-D5A0-41C4-B626-E497657D21E4\" targetRef=\"sid-C9AF2295-51A5-44C8-AF20-AA44B6446843\"></bpmn2:sequenceFlow>\n  </bpmn2:process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_Leave\">\n    <bpmndi:BPMNPlane bpmnElement=\"Leave\" id=\"BPMNPlane_Leave\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-3AAF069C-9D1F-4109-B5D0-F6F48FD36F44\" id=\"BPMNShape_sid-3AAF069C-9D1F-4109-B5D0-F6F48FD36F44\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"84.19999999999999\" y=\"197.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7\" id=\"BPMNShape_sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"159.2\" y=\"172.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929\" id=\"BPMNShape_sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"304.2\" y=\"172.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-95041659-921C-4647-AA7E-007DD53297BA\" id=\"BPMNShape_sid-95041659-921C-4647-AA7E-007DD53297BA\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.00000000000006\" x=\"449.2\" y=\"172.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-E6384472-DFD1-4776-83CB-1F8733961BEE\" id=\"BPMNShape_sid-E6384472-DFD1-4776-83CB-1F8733961BEE\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"594.2\" y=\"172.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2B5363F4-D5A0-41C4-B626-E497657D21E4\" id=\"BPMNShape_sid-2B5363F4-D5A0-41C4-B626-E497657D21E4\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"739.2\" y=\"172.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-C9AF2295-51A5-44C8-AF20-AA44B6446843\" id=\"BPMNShape_sid-C9AF2295-51A5-44C8-AF20-AA44B6446843\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"884.2\" y=\"198.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-2AEF1531-8C04-4774-82C7-82ED3A7B1C6B\" id=\"BPMNEdge_sid-2AEF1531-8C04-4774-82C7-82ED3A7B1C6B\">\n        <omgdi:waypoint x=\"114.19999999999999\" y=\"212.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"159.2\" y=\"212.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-69022BEB-06E9-4225-9AB6-D86BEE5B6642\" id=\"BPMNEdge_sid-69022BEB-06E9-4225-9AB6-D86BEE5B6642\">\n        <omgdi:waypoint x=\"404.2\" y=\"212.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"449.2\" y=\"212.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-D929EED9-94E8-4398-8344-97AD26547CA5\" id=\"BPMNEdge_sid-D929EED9-94E8-4398-8344-97AD26547CA5\">\n        <omgdi:waypoint x=\"549.2\" y=\"212.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"594.2\" y=\"212.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-4E35F3DB-BF02-4697-9781-858C5929378A\" id=\"BPMNEdge_sid-4E35F3DB-BF02-4697-9781-858C5929378A\">\n        <omgdi:waypoint x=\"694.2\" y=\"212.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"739.2\" y=\"212.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-B27E825E-E313-4159-B323-7CB877EEEC17\" id=\"BPMNEdge_sid-B27E825E-E313-4159-B323-7CB877EEEC17\">\n        <omgdi:waypoint x=\"839.2\" y=\"212.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"884.2\" y=\"212.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-D204CAAD-4C7D-4ADB-8C4A-DDCBBF9258AC\" id=\"BPMNEdge_sid-D204CAAD-4C7D-4ADB-8C4A-DDCBBF9258AC\">\n        <omgdi:waypoint x=\"259.2\" y=\"212.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"304.2\" y=\"212.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</bpmn2:definitions>',0),('ef54bd33-34bb-11ed-bd8b-283a4d3b4979',2,'source',NULL,_binary '{\"resourceId\":\"ef530f82-34bb-11ed-bd8b-283a4d3b4979\",\"properties\":{\"process_id\":\"Loan\",\"name\":\"借款流程\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-73C00F4B-1CEC-411F-A3D0-D8C73DEA2372\",\"properties\":{\"overrideid\":\"\",\"name\":\"开始\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-384CD776-A2C1-4B62-BAA2-E759F038BEF7\"}],\"bounds\":{\"lowerRight\":{\"x\":176.5,\"y\":247},\"upperLeft\":{\"x\":146.5,\"y\":217}},\"dockers\":[]},{\"resourceId\":\"sid-2D3F212C-34A1-4D90-8A74-1BB7BCABA4AF\",\"properties\":{\"overrideid\":\"\",\"name\":\"部门经理审核\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-5C879CA3-C973-490E-AA97-FAAFF49143A3\"}],\"bounds\":{\"lowerRight\":{\"x\":321.5,\"y\":272},\"upperLeft\":{\"x\":221.5,\"y\":192}},\"dockers\":[]},{\"resourceId\":\"sid-384CD776-A2C1-4B62-BAA2-E759F038BEF7\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2D3F212C-34A1-4D90-8A74-1BB7BCABA4AF\"}],\"bounds\":{\"lowerRight\":{\"x\":220.65625,\"y\":232},\"upperLeft\":{\"x\":177.109375,\"y\":232}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-2D3F212C-34A1-4D90-8A74-1BB7BCABA4AF\"}},{\"resourceId\":\"sid-FB386C0B-E0A6-4E6A-849B-5E1614A99665\",\"properties\":{\"overrideid\":\"\",\"name\":\"财务审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-DBD4AC6E-1CA4-4D5F-9EFA-35471D61DF95\"}],\"bounds\":{\"lowerRight\":{\"x\":466.5,\"y\":272},\"upperLeft\":{\"x\":366.5,\"y\":192}},\"dockers\":[]},{\"resourceId\":\"sid-5C879CA3-C973-490E-AA97-FAAFF49143A3\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-FB386C0B-E0A6-4E6A-849B-5E1614A99665\"}],\"bounds\":{\"lowerRight\":{\"x\":365.65625,\"y\":232},\"upperLeft\":{\"x\":322.34375,\"y\":232}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-FB386C0B-E0A6-4E6A-849B-5E1614A99665\"}},{\"resourceId\":\"sid-431CD5BC-26BB-427E-BC8A-4DCC343D6B79\",\"properties\":{\"overrideid\":\"\",\"name\":\"结束\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":539.5,\"y\":246},\"upperLeft\":{\"x\":511.5,\"y\":218}},\"dockers\":[]},{\"resourceId\":\"sid-DBD4AC6E-1CA4-4D5F-9EFA-35471D61DF95\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-431CD5BC-26BB-427E-BC8A-4DCC343D6B79\"}],\"bounds\":{\"lowerRight\":{\"x\":510.875,\"y\":232},\"upperLeft\":{\"x\":466.890625,\"y\":232}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-431CD5BC-26BB-427E-BC8A-4DCC343D6B79\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL);
/*!40000 ALTER TABLE `act_ge_bytearray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_property`
--

DROP TABLE IF EXISTS `act_ge_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `VALUE_` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  PRIMARY KEY (`NAME_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_property`
--

LOCK TABLES `act_ge_property` WRITE;
/*!40000 ALTER TABLE `act_ge_property` DISABLE KEYS */;
INSERT INTO `act_ge_property` VALUES ('cfg.execution-related-entities-count','false',1),('next.dbid','1',1),('schema.history','create(7.1.0-M6)',1),('schema.version','7.1.0-M6',1);
/*!40000 ALTER TABLE `act_ge_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_actinst`
--

DROP TABLE IF EXISTS `act_hi_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `ACT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`) USING BTREE,
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`) USING BTREE,
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_actinst`
--

LOCK TABLES `act_hi_actinst` WRITE;
/*!40000 ALTER TABLE `act_hi_actinst` DISABLE KEYS */;
INSERT INTO `act_hi_actinst` VALUES ('0295917a-32fb-11ed-9c60-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','sid-3AAF069C-9D1F-4109-B5D0-F6F48FD36F44',NULL,NULL,'开始','startEvent',NULL,'2022-09-13 08:28:37.989','2022-09-13 08:28:37.992',3,NULL,''),('0296a2eb-32fb-11ed-9c60-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7','02989ebc-32fb-11ed-9c60-283a4d3b4979',NULL,'直属领导审批','userTask','admin','2022-09-13 08:28:37.996','2022-09-13 08:58:32.119',1794123,NULL,''),('0bb2a370-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929','0bb2a371-34a8-11ed-a5e5-283a4d3b4979',NULL,'部门经理审批','userTask','admin','2022-09-15 11:39:47.376','2022-09-15 11:40:31.150',43774,NULL,''),('25ca055a-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','sid-95041659-921C-4647-AA7E-007DD53297BA','25ca055b-34a8-11ed-a5e5-283a4d3b4979',NULL,'人事专员审批','userTask','admin','2022-09-15 11:40:31.150','2022-09-15 11:40:43.188',12038,NULL,''),('2cf6dfc4-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','sid-E6384472-DFD1-4776-83CB-1F8733961BEE','2cf6dfc5-34a8-11ed-a5e5-283a4d3b4979',NULL,'人事经理审批','userTask','admin','2022-09-15 11:40:43.188','2022-09-15 11:41:58.949',75761,NULL,''),('2ff8b0c1-32ff-11ed-87bc-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929','2ffb21c2-32ff-11ed-87bc-283a4d3b4979',NULL,'部门经理审批','userTask','zhangsan','2022-09-13 08:58:32.123','2022-09-13 09:01:07.109',154986,NULL,''),('3d31627e-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929','3d31898f-34a8-11ed-a5e5-283a4d3b4979',NULL,'部门经理审批','userTask','admin','2022-09-15 11:41:10.415','2022-09-15 11:41:17.056',6641,NULL,''),('4126b898-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','sid-95041659-921C-4647-AA7E-007DD53297BA','4126dfa9-34a8-11ed-a5e5-283a4d3b4979',NULL,'人事专员审批','userTask','admin','2022-09-15 11:41:17.056','2022-09-15 11:41:22.700',5644,NULL,''),('4483ed62-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','sid-E6384472-DFD1-4776-83CB-1F8733961BEE','4483ed63-34a8-11ed-a5e5-283a4d3b4979',NULL,'人事经理审批','userTask','admin','2022-09-15 11:41:22.700','2022-09-15 11:41:28.246',5546,NULL,''),('47d22e0c-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','sid-2B5363F4-D5A0-41C4-B626-E497657D21E4','47d22e0d-34a8-11ed-a5e5-283a4d3b4979',NULL,'总经理审批','userTask','admin','2022-09-15 11:41:28.246','2022-09-15 11:41:35.784',7538,NULL,''),('4c506336-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','sid-C9AF2295-51A5-44C8-AF20-AA44B6446843',NULL,NULL,'结束','endEvent',NULL,'2022-09-15 11:41:35.784','2022-09-15 11:41:35.784',0,NULL,''),('5a1f160a-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','sid-2B5363F4-D5A0-41C4-B626-E497657D21E4','5a1f160b-34a8-11ed-a5e5-283a4d3b4979',NULL,'总经理审批','userTask','admin','2022-09-15 11:41:58.949',NULL,NULL,NULL,''),('8c59ad6c-32ff-11ed-87bc-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','sid-95041659-921C-4647-AA7E-007DD53297BA','8c59ad6d-32ff-11ed-87bc-283a4d3b4979',NULL,'人事专员审批','userTask','zhangsan','2022-09-13 09:01:07.109','2022-09-13 13:50:20.911',17353802,NULL,''),('924a5bd8-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','sid-3AAF069C-9D1F-4109-B5D0-F6F48FD36F44',NULL,NULL,'开始','startEvent',NULL,'2022-09-15 11:43:33.185','2022-09-15 11:43:33.186',1,NULL,''),('924a82e9-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7','924a82ea-34a8-11ed-a5e5-283a4d3b4979',NULL,'直属领导审批','userTask','admin','2022-09-15 11:43:33.186','2022-09-15 11:45:02.988',89802,NULL,''),('b98caf9d-34a0-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','sid-3AAF069C-9D1F-4109-B5D0-F6F48FD36F44',NULL,NULL,'开始','startEvent',NULL,'2022-09-15 10:47:23.078','2022-09-15 10:47:23.081',3,NULL,''),('b98de81e-34a0-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7','b990a73f-34a0-11ed-a5e5-283a4d3b4979',NULL,'直属领导审批','userTask','admin','2022-09-15 10:47:23.085','2022-09-15 11:39:47.376',3144291,NULL,''),('c745766f-33c7-11ed-86cc-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','sid-3AAF069C-9D1F-4109-B5D0-F6F48FD36F44',NULL,NULL,'开始','startEvent',NULL,'2022-09-14 08:54:25.308','2022-09-14 08:54:25.311',3,NULL,''),('c74687e0-33c7-11ed-86cc-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7','c7491ff1-33c7-11ed-86cc-283a4d3b4979',NULL,'直属领导审批','userTask','admin','2022-09-14 08:54:25.315','2022-09-15 11:41:10.415',96405100,NULL,''),('c7d13593-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929','c7d13594-34a8-11ed-a5e5-283a4d3b4979',NULL,'部门经理审批','userTask','admin','2022-09-15 11:45:02.988','2022-09-15 11:45:38.818',35830,NULL,''),('d7e909ad-332a-11ed-be56-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7','d7eb539e-332a-11ed-be56-283a4d3b4979',NULL,'直属领导审批','userTask','admin','2022-09-13 14:11:02.237','2022-09-13 14:11:52.112',49875,NULL,''),('dd2c6efd-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','sid-95041659-921C-4647-AA7E-007DD53297BA','dd2c6efe-34a8-11ed-a5e5-283a4d3b4979',NULL,'人事专员审批','userTask','admin','2022-09-15 11:45:38.818',NULL,NULL,NULL,''),('f4067c02-3327-11ed-8143-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','sid-E6384472-DFD1-4776-83CB-1F8733961BEE','f408c5f3-3327-11ed-8143-283a4d3b4979',NULL,'人事经理审批','userTask','admin','2022-09-13 13:50:20.916','2022-09-13 14:11:02.232',1241316,NULL,''),('f5a35be7-332a-11ed-be56-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929','f5a35be8-332a-11ed-be56-283a4d3b4979',NULL,'部门经理审批','userTask','admin','2022-09-13 14:11:52.112','2022-09-14 08:53:03.248',67271136,'admin 作废了当前流程申请','');
/*!40000 ALTER TABLE `act_hi_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_attachment`
--

DROP TABLE IF EXISTS `act_hi_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `URL_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_attachment`
--

LOCK TABLES `act_hi_attachment` WRITE;
/*!40000 ALTER TABLE `act_hi_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_comment`
--

DROP TABLE IF EXISTS `act_hi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `ACTION_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_comment`
--

LOCK TABLES `act_hi_comment` WRITE;
/*!40000 ALTER TABLE `act_hi_comment` DISABLE KEYS */;
INSERT INTO `act_hi_comment` VALUES ('02a4d3c1-32fb-11ed-9c60-283a4d3b4979','event','2022-09-13 08:28:38.089','admin','02989ebc-32fb-11ed-9c60-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL),('0bae5dad-34a8-11ed-a5e5-283a4d3b4979','comment','2022-09-15 11:39:47.348',NULL,'b990a73f-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','AddComment','审批通过',_binary '审批通过'),('0bb7d396-34a8-11ed-a5e5-283a4d3b4979','event','2022-09-15 11:39:47.410',NULL,'0bb2a371-34a8-11ed-a5e5-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL),('25c60db7-34a8-11ed-a5e5-283a4d3b4979','comment','2022-09-15 11:40:31.124','admin','0bb2a371-34a8-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','AddComment','审批通过',_binary '审批通过'),('25cdfd00-34a8-11ed-a5e5-283a4d3b4979','event','2022-09-15 11:40:31.176','admin','25ca055b-34a8-11ed-a5e5-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL),('2cf3d281-34a8-11ed-a5e5-283a4d3b4979','comment','2022-09-15 11:40:43.168',NULL,'25ca055b-34a8-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','AddComment','审批通过',_binary '审批通过'),('2cfb73aa-34a8-11ed-a5e5-283a4d3b4979','event','2022-09-15 11:40:43.218',NULL,'2cf6dfc5-34a8-11ed-a5e5-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL),('2fec2d9e-32ff-11ed-87bc-283a4d3b4979','comment','2022-09-13 08:58:32.041',NULL,'02989ebc-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','AddComment','同意',_binary '同意'),('30047098-32ff-11ed-87bc-283a4d3b4979','event','2022-09-13 08:58:32.199',NULL,'2ffb21c2-32ff-11ed-87bc-283a4d3b4979',NULL,'AddUserLink','zhangsan_|_assignee',NULL),('3d2d91eb-34a8-11ed-a5e5-283a4d3b4979','comment','2022-09-15 11:41:10.390',NULL,'c7491ff1-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','AddComment','审批通过',_binary '审批通过'),('3d355a24-34a8-11ed-a5e5-283a4d3b4979','event','2022-09-15 11:41:10.441',NULL,'3d31898f-34a8-11ed-a5e5-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL),('4123f975-34a8-11ed-a5e5-283a4d3b4979','comment','2022-09-15 11:41:17.038',NULL,'3d31898f-34a8-11ed-a5e5-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','AddComment','审批通过',_binary '审批通过'),('412a892e-34a8-11ed-a5e5-283a4d3b4979','event','2022-09-15 11:41:17.081',NULL,'4126dfa9-34a8-11ed-a5e5-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL),('4480b90f-34a8-11ed-a5e5-283a4d3b4979','comment','2022-09-15 11:41:22.679','admin','4126dfa9-34a8-11ed-a5e5-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','AddComment','审批通过',_binary '审批通过'),('44888148-34a8-11ed-a5e5-283a4d3b4979','event','2022-09-15 11:41:22.730','admin','4483ed63-34a8-11ed-a5e5-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL),('47cf20c9-34a8-11ed-a5e5-283a4d3b4979','comment','2022-09-15 11:41:28.226',NULL,'4483ed63-34a8-11ed-a5e5-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','AddComment','审批通过',_binary '审批通过'),('47d5d792-34a8-11ed-a5e5-283a4d3b4979','event','2022-09-15 11:41:28.270',NULL,'47d22e0d-34a8-11ed-a5e5-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL),('4c4d55f3-34a8-11ed-a5e5-283a4d3b4979','comment','2022-09-15 11:41:35.764',NULL,'47d22e0d-34a8-11ed-a5e5-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','AddComment','1',_binary '1'),('5a1c2fd7-34a8-11ed-a5e5-283a4d3b4979','comment','2022-09-15 11:41:58.930',NULL,'2cf6dfc5-34a8-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','AddComment','审批通过',_binary '审批通过'),('5a230db0-34a8-11ed-a5e5-283a4d3b4979','event','2022-09-15 11:41:58.975',NULL,'5a1f160b-34a8-11ed-a5e5-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL),('8c4bf1c9-32ff-11ed-87bc-283a4d3b4979','comment','2022-09-13 09:01:07.019',NULL,'2ffb21c2-32ff-11ed-87bc-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','AddComment','通过',_binary '通过'),('8c601612-32ff-11ed-87bc-283a4d3b4979','event','2022-09-13 09:01:07.151',NULL,'8c59ad6d-32ff-11ed-87bc-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL),('924ec8af-34a8-11ed-a5e5-283a4d3b4979','event','2022-09-15 11:43:33.214','admin','924a82ea-34a8-11ed-a5e5-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL),('b9a40834-34a0-11ed-a5e5-283a4d3b4979','event','2022-09-15 10:47:23.230','admin','b990a73f-34a0-11ed-a5e5-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL),('c611a71d-3327-11ed-8143-283a4d3b4979','event','2022-09-13 13:49:03.813',NULL,'8c59ad6d-32ff-11ed-87bc-283a4d3b4979',NULL,'AddUserLink','zhangsan_|_assignee',NULL),('c61b440e-3327-11ed-8143-283a4d3b4979','comment','2022-09-13 13:49:03.877',NULL,'8c59ad6d-32ff-11ed-87bc-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','AddComment','admin 转办任务【人事专员审批】给 zhangsan 办理',_binary 'admin 转办任务【人事专员审批】给 zhangsan 办理'),('c7530b06-33c7-11ed-86cc-283a4d3b4979','event','2022-09-14 08:54:25.397','admin','c7491ff1-33c7-11ed-86cc-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL),('c7ce2850-34a8-11ed-a5e5-283a4d3b4979','comment','2022-09-15 11:45:02.968',NULL,'924a82ea-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','AddComment','审批通过',_binary '审批通过'),('c7d469e9-34a8-11ed-a5e5-283a4d3b4979','event','2022-09-15 11:45:03.009',NULL,'c7d13594-34a8-11ed-a5e5-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL),('d7dd49da-332a-11ed-be56-283a4d3b4979','comment','2022-09-13 14:11:02.160',NULL,'f408c5f3-3327-11ed-8143-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','AddComment','『admin 驳回任务 【人事经理审批】→【直属领导审批】』',_binary '『admin 驳回任务 【人事经理审批】→【直属领导审批】』'),('d7f824e3-332a-11ed-be56-283a4d3b4979','event','2022-09-13 14:11:02.336',NULL,'d7eb539e-332a-11ed-be56-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL),('dd2961ba-34a8-11ed-a5e5-283a4d3b4979','comment','2022-09-15 11:45:38.798',NULL,'c7d13594-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','AddComment','审批通过',_binary '审批通过'),('dd303f93-34a8-11ed-a5e5-283a4d3b4979','event','2022-09-15 11:45:38.843',NULL,'dd2c6efe-34a8-11ed-a5e5-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL),('f3fbf4af-3327-11ed-8143-283a4d3b4979','comment','2022-09-13 13:50:20.847',NULL,'8c59ad6d-32ff-11ed-87bc-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','AddComment','通过',_binary '通过'),('f4115178-3327-11ed-8143-283a4d3b4979','event','2022-09-13 13:50:20.987',NULL,'f408c5f3-3327-11ed-8143-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL),('f59a5b34-332a-11ed-be56-283a4d3b4979','comment','2022-09-13 14:11:52.052',NULL,'d7eb539e-332a-11ed-be56-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','AddComment','通过',_binary '通过'),('f5aa12ad-332a-11ed-be56-283a4d3b4979','event','2022-09-13 14:11:52.156',NULL,'f5a35be8-332a-11ed-be56-283a4d3b4979',NULL,'AddUserLink','admin_|_assignee',NULL);
/*!40000 ALTER TABLE `act_hi_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_detail`
--

DROP TABLE IF EXISTS `act_hi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `VAR_TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`) USING BTREE,
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`) USING BTREE,
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_detail`
--

LOCK TABLES `act_hi_detail` WRITE;
/*!40000 ALTER TABLE `act_hi_detail` DISABLE KEYS */;
INSERT INTO `act_hi_detail` VALUES ('0294ce26-32fb-11ed-9c60-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979',NULL,NULL,'entity','json',0,'2022-09-13 08:28:37.984',NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap'),('02951c48-32fb-11ed-9c60-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979',NULL,NULL,'formName','string',0,'2022-09-13 08:28:37.986',NULL,NULL,NULL,'LeaveForm',NULL),('0299891e-32fb-11ed-9c60-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','02989ebc-32fb-11ed-9c60-283a4d3b4979',NULL,'formName','string',0,'2022-09-13 08:28:38.015',NULL,NULL,NULL,'LeaveForm',NULL),('02998920-32fb-11ed-9c60-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','02989ebc-32fb-11ed-9c60-283a4d3b4979',NULL,'entity','json',0,'2022-09-13 08:28:38.015',NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap'),('0bb2554e-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979',NULL,NULL,'entity','json',1,'2022-09-15 11:39:47.374',NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap'),('0bb27c5f-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979',NULL,NULL,'formName','string',1,'2022-09-15 11:39:47.375',NULL,NULL,NULL,'LeaveForm',NULL),('0bb2f193-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','0bb2a371-34a8-11ed-a5e5-283a4d3b4979',NULL,'formName','string',0,'2022-09-15 11:39:47.378',NULL,NULL,NULL,'LeaveForm',NULL),('0bb2f195-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','0bb2a371-34a8-11ed-a5e5-283a4d3b4979',NULL,'entity','json',0,'2022-09-15 11:39:47.378',NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap'),('25c99028-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979',NULL,NULL,'entity','json',1,'2022-09-15 11:40:31.147',NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap'),('25c9b739-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979',NULL,NULL,'formName','string',1,'2022-09-15 11:40:31.148',NULL,NULL,NULL,'LeaveForm',NULL),('25ca537d-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','25ca055b-34a8-11ed-a5e5-283a4d3b4979',NULL,'formName','string',0,'2022-09-15 11:40:31.152',NULL,NULL,NULL,'LeaveForm',NULL),('25ca537f-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','25ca055b-34a8-11ed-a5e5-283a4d3b4979',NULL,'entity','json',0,'2022-09-15 11:40:31.152',NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap'),('2cf691a2-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979',NULL,NULL,'entity','json',1,'2022-09-15 11:40:43.186',NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap'),('2cf6b8b3-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979',NULL,NULL,'formName','string',1,'2022-09-15 11:40:43.187',NULL,NULL,NULL,'LeaveForm',NULL),('2cf706d7-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','2cf6dfc5-34a8-11ed-a5e5-283a4d3b4979',NULL,'formName','string',0,'2022-09-15 11:40:43.189',NULL,NULL,NULL,'LeaveForm',NULL),('2cf72de9-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','2cf6dfc5-34a8-11ed-a5e5-283a4d3b4979',NULL,'entity','json',0,'2022-09-15 11:40:43.190',NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap'),('2ff6b4ef-32ff-11ed-87bc-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979',NULL,NULL,'entity','json',1,'2022-09-13 08:58:32.110',NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap'),('2ff72a20-32ff-11ed-87bc-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979',NULL,NULL,'formName','string',1,'2022-09-13 08:58:32.113',NULL,NULL,NULL,'LeaveForm',NULL),('2ffbbe04-32ff-11ed-87bc-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','2ffb21c2-32ff-11ed-87bc-283a4d3b4979',NULL,'formName','string',0,'2022-09-13 08:58:32.143',NULL,NULL,NULL,'LeaveForm',NULL),('2ffbe516-32ff-11ed-87bc-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','2ffb21c2-32ff-11ed-87bc-283a4d3b4979',NULL,'entity','json',0,'2022-09-13 08:58:32.144',NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap'),('3d31145c-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979',NULL,NULL,'entity','json',1,'2022-09-15 11:41:10.413',NULL,NULL,NULL,'{\"id\":\"1568112800827052034\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假23\",\"leaveReason\":\"43254\",\"startDate\":\"2022-09-08T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":8,\"principal\":\"34\",\"contactPhone\":\"12\",\"createDate\":\"2022-09-09T05:43:20.000+00:00\",\"updateDate\":\"2022-09-09T05:43:20.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"endDateStr\":\"2022-09-16 23:59:59\",\"statusStr\":\"已撤回\",\"startDateStr\":\"2022-09-09 00:00:00\",\"createDateStr\":\"2022-09-09 13:43:20\",\"updateDateStr\":\"2022-09-09 13:43:20\",\"leaveTypeStr\":\"事假\"}','java.util.LinkedHashMap'),('3d313b6d-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979',NULL,NULL,'formName','string',1,'2022-09-15 11:41:10.414',NULL,NULL,NULL,'LeaveForm',NULL),('3d31b0a1-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','3d31898f-34a8-11ed-a5e5-283a4d3b4979',NULL,'formName','string',0,'2022-09-15 11:41:10.417',NULL,NULL,NULL,'LeaveForm',NULL),('3d31b0a3-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','3d31898f-34a8-11ed-a5e5-283a4d3b4979',NULL,'entity','json',0,'2022-09-15 11:41:10.417',NULL,NULL,NULL,'{\"id\":\"1568112800827052034\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假23\",\"leaveReason\":\"43254\",\"startDate\":\"2022-09-08T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":8,\"principal\":\"34\",\"contactPhone\":\"12\",\"createDate\":\"2022-09-09T05:43:20.000+00:00\",\"updateDate\":\"2022-09-09T05:43:20.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"endDateStr\":\"2022-09-16 23:59:59\",\"statusStr\":\"已撤回\",\"startDateStr\":\"2022-09-09 00:00:00\",\"createDateStr\":\"2022-09-09 13:43:20\",\"updateDateStr\":\"2022-09-09 13:43:20\",\"leaveTypeStr\":\"事假\"}','java.util.LinkedHashMap'),('41266a76-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979',NULL,NULL,'entity','json',1,'2022-09-15 11:41:17.054',NULL,NULL,NULL,'{\"id\":\"1568112800827052034\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假23\",\"leaveReason\":\"43254\",\"startDate\":\"2022-09-08T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":8,\"principal\":\"34\",\"contactPhone\":\"12\",\"createDate\":\"2022-09-09T05:43:20.000+00:00\",\"updateDate\":\"2022-09-09T05:43:20.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"endDateStr\":\"2022-09-16 23:59:59\",\"statusStr\":\"已撤回\",\"startDateStr\":\"2022-09-09 00:00:00\",\"createDateStr\":\"2022-09-09 13:43:20\",\"updateDateStr\":\"2022-09-09 13:43:20\",\"leaveTypeStr\":\"事假\"}','java.util.LinkedHashMap'),('41269187-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979',NULL,NULL,'formName','string',1,'2022-09-15 11:41:17.055',NULL,NULL,NULL,'LeaveForm',NULL),('412706bb-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','4126dfa9-34a8-11ed-a5e5-283a4d3b4979',NULL,'formName','string',0,'2022-09-15 11:41:17.058',NULL,NULL,NULL,'LeaveForm',NULL),('412706bd-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','4126dfa9-34a8-11ed-a5e5-283a4d3b4979',NULL,'entity','json',0,'2022-09-15 11:41:17.058',NULL,NULL,NULL,'{\"id\":\"1568112800827052034\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假23\",\"leaveReason\":\"43254\",\"startDate\":\"2022-09-08T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":8,\"principal\":\"34\",\"contactPhone\":\"12\",\"createDate\":\"2022-09-09T05:43:20.000+00:00\",\"updateDate\":\"2022-09-09T05:43:20.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"endDateStr\":\"2022-09-16 23:59:59\",\"statusStr\":\"已撤回\",\"startDateStr\":\"2022-09-09 00:00:00\",\"createDateStr\":\"2022-09-09 13:43:20\",\"updateDateStr\":\"2022-09-09 13:43:20\",\"leaveTypeStr\":\"事假\"}','java.util.LinkedHashMap'),('44839f40-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979',NULL,NULL,'entity','json',1,'2022-09-15 11:41:22.698',NULL,NULL,NULL,'{\"id\":\"1568112800827052034\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假23\",\"leaveReason\":\"43254\",\"startDate\":\"2022-09-08T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":8,\"principal\":\"34\",\"contactPhone\":\"12\",\"createDate\":\"2022-09-09T05:43:20.000+00:00\",\"updateDate\":\"2022-09-09T05:43:20.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"endDateStr\":\"2022-09-16 23:59:59\",\"statusStr\":\"已撤回\",\"startDateStr\":\"2022-09-09 00:00:00\",\"createDateStr\":\"2022-09-09 13:43:20\",\"updateDateStr\":\"2022-09-09 13:43:20\",\"leaveTypeStr\":\"事假\"}','java.util.LinkedHashMap'),('4483c651-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979',NULL,NULL,'formName','string',1,'2022-09-15 11:41:22.699',NULL,NULL,NULL,'LeaveForm',NULL),('44843b85-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','4483ed63-34a8-11ed-a5e5-283a4d3b4979',NULL,'formName','string',0,'2022-09-15 11:41:22.702',NULL,NULL,NULL,'LeaveForm',NULL),('44843b87-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','4483ed63-34a8-11ed-a5e5-283a4d3b4979',NULL,'entity','json',0,'2022-09-15 11:41:22.702',NULL,NULL,NULL,'{\"id\":\"1568112800827052034\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假23\",\"leaveReason\":\"43254\",\"startDate\":\"2022-09-08T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":8,\"principal\":\"34\",\"contactPhone\":\"12\",\"createDate\":\"2022-09-09T05:43:20.000+00:00\",\"updateDate\":\"2022-09-09T05:43:20.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"endDateStr\":\"2022-09-16 23:59:59\",\"statusStr\":\"已撤回\",\"startDateStr\":\"2022-09-09 00:00:00\",\"createDateStr\":\"2022-09-09 13:43:20\",\"updateDateStr\":\"2022-09-09 13:43:20\",\"leaveTypeStr\":\"事假\"}','java.util.LinkedHashMap'),('47d1b8da-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979',NULL,NULL,'entity','json',1,'2022-09-15 11:41:28.243',NULL,NULL,NULL,'{\"id\":\"1568112800827052034\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假23\",\"leaveReason\":\"43254\",\"startDate\":\"2022-09-08T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":8,\"principal\":\"34\",\"contactPhone\":\"12\",\"createDate\":\"2022-09-09T05:43:20.000+00:00\",\"updateDate\":\"2022-09-09T05:43:20.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"endDateStr\":\"2022-09-16 23:59:59\",\"statusStr\":\"已撤回\",\"startDateStr\":\"2022-09-09 00:00:00\",\"createDateStr\":\"2022-09-09 13:43:20\",\"updateDateStr\":\"2022-09-09 13:43:20\",\"leaveTypeStr\":\"事假\"}','java.util.LinkedHashMap'),('47d1dfeb-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979',NULL,NULL,'formName','string',1,'2022-09-15 11:41:28.244',NULL,NULL,NULL,'LeaveForm',NULL),('47d2551f-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','47d22e0d-34a8-11ed-a5e5-283a4d3b4979',NULL,'formName','string',0,'2022-09-15 11:41:28.247',NULL,NULL,NULL,'LeaveForm',NULL),('47d25521-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','47d22e0d-34a8-11ed-a5e5-283a4d3b4979',NULL,'entity','json',0,'2022-09-15 11:41:28.247',NULL,NULL,NULL,'{\"id\":\"1568112800827052034\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假23\",\"leaveReason\":\"43254\",\"startDate\":\"2022-09-08T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":8,\"principal\":\"34\",\"contactPhone\":\"12\",\"createDate\":\"2022-09-09T05:43:20.000+00:00\",\"updateDate\":\"2022-09-09T05:43:20.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"endDateStr\":\"2022-09-16 23:59:59\",\"statusStr\":\"已撤回\",\"startDateStr\":\"2022-09-09 00:00:00\",\"createDateStr\":\"2022-09-09 13:43:20\",\"updateDateStr\":\"2022-09-09 13:43:20\",\"leaveTypeStr\":\"事假\"}','java.util.LinkedHashMap'),('4c501514-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979',NULL,NULL,'entity','json',1,'2022-09-15 11:41:35.782',NULL,NULL,NULL,'{\"id\":\"1568112800827052034\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假23\",\"leaveReason\":\"43254\",\"startDate\":\"2022-09-08T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":8,\"principal\":\"34\",\"contactPhone\":\"12\",\"createDate\":\"2022-09-09T05:43:20.000+00:00\",\"updateDate\":\"2022-09-09T05:43:20.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"endDateStr\":\"2022-09-16 23:59:59\",\"statusStr\":\"已撤回\",\"startDateStr\":\"2022-09-09 00:00:00\",\"createDateStr\":\"2022-09-09 13:43:20\",\"updateDateStr\":\"2022-09-09 13:43:20\",\"leaveTypeStr\":\"事假\"}','java.util.LinkedHashMap'),('4c503c25-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979',NULL,NULL,'formName','string',1,'2022-09-15 11:41:35.783',NULL,NULL,NULL,'LeaveForm',NULL),('5a1ec7e8-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979',NULL,NULL,'entity','json',1,'2022-09-15 11:41:58.947',NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap'),('5a1eeef9-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979',NULL,NULL,'formName','string',1,'2022-09-15 11:41:58.948',NULL,NULL,NULL,'LeaveForm',NULL),('5a1f3d1d-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','5a1f160b-34a8-11ed-a5e5-283a4d3b4979',NULL,'formName','string',0,'2022-09-15 11:41:58.950',NULL,NULL,NULL,'LeaveForm',NULL),('5a1f3d1f-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','5a1f160b-34a8-11ed-a5e5-283a4d3b4979',NULL,'entity','json',0,'2022-09-15 11:41:58.950',NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap'),('8c58ea1a-32ff-11ed-87bc-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979',NULL,NULL,'entity','json',1,'2022-09-13 09:01:07.104',NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap'),('8c59112b-32ff-11ed-87bc-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979',NULL,NULL,'formName','string',1,'2022-09-13 09:01:07.105',NULL,NULL,NULL,'LeaveForm',NULL),('8c5a229f-32ff-11ed-87bc-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','8c59ad6d-32ff-11ed-87bc-283a4d3b4979',NULL,'formName','string',0,'2022-09-13 09:01:07.112',NULL,NULL,NULL,'LeaveForm',NULL),('8c5a22a1-32ff-11ed-87bc-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','8c59ad6d-32ff-11ed-87bc-283a4d3b4979',NULL,'entity','json',0,'2022-09-13 09:01:07.112',NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap'),('924a5bd4-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979',NULL,NULL,'entity','json',0,'2022-09-15 11:43:33.185',NULL,NULL,NULL,'{\"id\":\"1570250806270881793\",\"username\":\"admin\",\"leaveType\":1,\"title\":\"0915\",\"leaveReason\":\"请假病假\",\"startDate\":\"2022-09-14T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":8.9,\"createDate\":\"2022-09-15T03:19:00.000+00:00\",\"updateDate\":\"2022-09-15T03:19:00.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-15 11:19:00\",\"leaveTypeStr\":\"病假\",\"startDateStr\":\"2022-09-15 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-23 23:59:59\",\"updateDateStr\":\"2022-09-15 11:19:00\"}','java.util.LinkedHashMap'),('924a5bd6-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979',NULL,NULL,'formName','string',0,'2022-09-15 11:43:33.185',NULL,NULL,NULL,'LeaveForm',NULL),('924a82ec-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','924a82ea-34a8-11ed-a5e5-283a4d3b4979',NULL,'formName','string',0,'2022-09-15 11:43:33.186',NULL,NULL,NULL,'LeaveForm',NULL),('924a82ee-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','924a82ea-34a8-11ed-a5e5-283a4d3b4979',NULL,'entity','json',0,'2022-09-15 11:43:33.186',NULL,NULL,NULL,'{\"id\":\"1570250806270881793\",\"username\":\"admin\",\"leaveType\":1,\"title\":\"0915\",\"leaveReason\":\"请假病假\",\"startDate\":\"2022-09-14T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":8.9,\"createDate\":\"2022-09-15T03:19:00.000+00:00\",\"updateDate\":\"2022-09-15T03:19:00.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-15 11:19:00\",\"leaveTypeStr\":\"病假\",\"startDateStr\":\"2022-09-15 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-23 23:59:59\",\"updateDateStr\":\"2022-09-15 11:19:00\"}','java.util.LinkedHashMap'),('b98bc539-34a0-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979',NULL,NULL,'entity','json',0,'2022-09-15 10:47:23.071',NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap'),('b98c3a6b-34a0-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979',NULL,NULL,'formName','string',0,'2022-09-15 10:47:23.074',NULL,NULL,NULL,'LeaveForm',NULL),('b9916a91-34a0-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','b990a73f-34a0-11ed-a5e5-283a4d3b4979',NULL,'formName','string',0,'2022-09-15 10:47:23.108',NULL,NULL,NULL,'LeaveForm',NULL),('b99191a3-34a0-11ed-a5e5-283a4d3b4979','VariableUpdate','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','b990a73f-34a0-11ed-a5e5-283a4d3b4979',NULL,'entity','json',0,'2022-09-15 10:47:23.109',NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap'),('c744b31b-33c7-11ed-86cc-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979',NULL,NULL,'entity','json',0,'2022-09-14 08:54:25.303',NULL,NULL,NULL,'{\"id\":\"1568112800827052034\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假23\",\"leaveReason\":\"43254\",\"startDate\":\"2022-09-08T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":8,\"principal\":\"34\",\"contactPhone\":\"12\",\"createDate\":\"2022-09-09T05:43:20.000+00:00\",\"updateDate\":\"2022-09-09T05:43:20.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"endDateStr\":\"2022-09-16 23:59:59\",\"statusStr\":\"已撤回\",\"startDateStr\":\"2022-09-09 00:00:00\",\"createDateStr\":\"2022-09-09 13:43:20\",\"updateDateStr\":\"2022-09-09 13:43:20\",\"leaveTypeStr\":\"事假\"}','java.util.LinkedHashMap'),('c745013d-33c7-11ed-86cc-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979',NULL,NULL,'formName','string',0,'2022-09-14 08:54:25.305',NULL,NULL,NULL,'LeaveForm',NULL),('c749bc33-33c7-11ed-86cc-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','c7491ff1-33c7-11ed-86cc-283a4d3b4979',NULL,'formName','string',0,'2022-09-14 08:54:25.336',NULL,NULL,NULL,'LeaveForm',NULL),('c749bc35-33c7-11ed-86cc-283a4d3b4979','VariableUpdate','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','c7491ff1-33c7-11ed-86cc-283a4d3b4979',NULL,'entity','json',0,'2022-09-14 08:54:25.336',NULL,NULL,NULL,'{\"id\":\"1568112800827052034\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假23\",\"leaveReason\":\"43254\",\"startDate\":\"2022-09-08T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":8,\"principal\":\"34\",\"contactPhone\":\"12\",\"createDate\":\"2022-09-09T05:43:20.000+00:00\",\"updateDate\":\"2022-09-09T05:43:20.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"endDateStr\":\"2022-09-16 23:59:59\",\"statusStr\":\"已撤回\",\"startDateStr\":\"2022-09-09 00:00:00\",\"createDateStr\":\"2022-09-09 13:43:20\",\"updateDateStr\":\"2022-09-09 13:43:20\",\"leaveTypeStr\":\"事假\"}','java.util.LinkedHashMap'),('c7d10e81-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979',NULL,NULL,'entity','json',1,'2022-09-15 11:45:02.987',NULL,NULL,NULL,'{\"id\":\"1570250806270881793\",\"username\":\"admin\",\"leaveType\":1,\"title\":\"0915\",\"leaveReason\":\"请假病假\",\"startDate\":\"2022-09-14T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":8.9,\"createDate\":\"2022-09-15T03:19:00.000+00:00\",\"updateDate\":\"2022-09-15T03:19:00.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-15 11:19:00\",\"leaveTypeStr\":\"病假\",\"startDateStr\":\"2022-09-15 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-23 23:59:59\",\"updateDateStr\":\"2022-09-15 11:19:00\"}','java.util.LinkedHashMap'),('c7d10e82-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979',NULL,NULL,'formName','string',1,'2022-09-15 11:45:02.987',NULL,NULL,NULL,'LeaveForm',NULL),('c7d15ca6-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','c7d13594-34a8-11ed-a5e5-283a4d3b4979',NULL,'formName','string',0,'2022-09-15 11:45:02.989',NULL,NULL,NULL,'LeaveForm',NULL),('c7d15ca8-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','c7d13594-34a8-11ed-a5e5-283a4d3b4979',NULL,'entity','json',0,'2022-09-15 11:45:02.989',NULL,NULL,NULL,'{\"id\":\"1570250806270881793\",\"username\":\"admin\",\"leaveType\":1,\"title\":\"0915\",\"leaveReason\":\"请假病假\",\"startDate\":\"2022-09-14T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":8.9,\"createDate\":\"2022-09-15T03:19:00.000+00:00\",\"updateDate\":\"2022-09-15T03:19:00.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-15 11:19:00\",\"leaveTypeStr\":\"病假\",\"startDateStr\":\"2022-09-15 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-23 23:59:59\",\"updateDateStr\":\"2022-09-15 11:19:00\"}','java.util.LinkedHashMap'),('d7e6bfbb-332a-11ed-be56-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979',NULL,NULL,'entity','json',1,'2022-09-13 14:11:02.222',NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap'),('d7e734ec-332a-11ed-be56-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979',NULL,NULL,'formName','string',1,'2022-09-13 14:11:02.225',NULL,NULL,NULL,'LeaveForm',NULL),('d7ebefe0-332a-11ed-be56-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','d7eb539e-332a-11ed-be56-283a4d3b4979',NULL,'formName','string',0,'2022-09-13 14:11:02.256',NULL,NULL,NULL,'LeaveForm',NULL),('d7ec3e02-332a-11ed-be56-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','d7eb539e-332a-11ed-be56-283a4d3b4979',NULL,'entity','json',0,'2022-09-13 14:11:02.258',NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap'),('dd2c20db-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979',NULL,NULL,'entity','json',1,'2022-09-15 11:45:38.816',NULL,NULL,NULL,'{\"id\":\"1570250806270881793\",\"username\":\"admin\",\"leaveType\":1,\"title\":\"0915\",\"leaveReason\":\"请假病假\",\"startDate\":\"2022-09-14T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":8.9,\"createDate\":\"2022-09-15T03:19:00.000+00:00\",\"updateDate\":\"2022-09-15T03:19:00.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-15 11:19:00\",\"leaveTypeStr\":\"病假\",\"startDateStr\":\"2022-09-15 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-23 23:59:59\",\"updateDateStr\":\"2022-09-15 11:19:00\"}','java.util.LinkedHashMap'),('dd2c47ec-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979',NULL,NULL,'formName','string',1,'2022-09-15 11:45:38.816',NULL,NULL,NULL,'LeaveForm',NULL),('dd2c9610-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','dd2c6efe-34a8-11ed-a5e5-283a4d3b4979',NULL,'formName','string',0,'2022-09-15 11:45:38.819',NULL,NULL,NULL,'LeaveForm',NULL),('dd2c9612-34a8-11ed-a5e5-283a4d3b4979','VariableUpdate','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','dd2c6efe-34a8-11ed-a5e5-283a4d3b4979',NULL,'entity','json',0,'2022-09-15 11:45:38.819',NULL,NULL,NULL,'{\"id\":\"1570250806270881793\",\"username\":\"admin\",\"leaveType\":1,\"title\":\"0915\",\"leaveReason\":\"请假病假\",\"startDate\":\"2022-09-14T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":8.9,\"createDate\":\"2022-09-15T03:19:00.000+00:00\",\"updateDate\":\"2022-09-15T03:19:00.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-15 11:19:00\",\"leaveTypeStr\":\"病假\",\"startDateStr\":\"2022-09-15 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-23 23:59:59\",\"updateDateStr\":\"2022-09-15 11:19:00\"}','java.util.LinkedHashMap'),('f4045920-3327-11ed-8143-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979',NULL,NULL,'entity','json',1,'2022-09-13 13:50:20.902',NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap'),('f404f561-3327-11ed-8143-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979',NULL,NULL,'formName','string',1,'2022-09-13 13:50:20.906',NULL,NULL,NULL,'LeaveForm',NULL),('f4096235-3327-11ed-8143-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','f408c5f3-3327-11ed-8143-283a4d3b4979',NULL,'formName','string',0,'2022-09-13 13:50:20.935',NULL,NULL,NULL,'LeaveForm',NULL),('f4098947-3327-11ed-8143-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','f408c5f3-3327-11ed-8143-283a4d3b4979',NULL,'entity','json',0,'2022-09-13 13:50:20.936',NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap'),('f5a2bfa5-332a-11ed-be56-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979',NULL,NULL,'entity','json',1,'2022-09-13 14:11:52.108',NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap'),('f5a2e6b6-332a-11ed-be56-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979',NULL,NULL,'formName','string',1,'2022-09-13 14:11:52.109',NULL,NULL,NULL,'LeaveForm',NULL),('f5a3d11a-332a-11ed-be56-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','f5a35be8-332a-11ed-be56-283a4d3b4979',NULL,'formName','string',0,'2022-09-13 14:11:52.115',NULL,NULL,NULL,'LeaveForm',NULL),('f5a3d11c-332a-11ed-be56-283a4d3b4979','VariableUpdate','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','f5a35be8-332a-11ed-be56-283a4d3b4979',NULL,'entity','json',0,'2022-09-13 14:11:52.115',NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap');
/*!40000 ALTER TABLE `act_hi_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_identitylink`
--

DROP TABLE IF EXISTS `act_hi_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `GROUP_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_identitylink`
--

LOCK TABLES `act_hi_identitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_identitylink` DISABLE KEYS */;
INSERT INTO `act_hi_identitylink` VALUES ('029458f4-32fb-11ed-9c60-283a4d3b4979',NULL,'starter','admin',NULL,'029458f3-32fb-11ed-9c60-283a4d3b4979'),('30042277-32ff-11ed-87bc-283a4d3b4979',NULL,'participant','zhangsan',NULL,'029458f3-32fb-11ed-9c60-283a4d3b4979'),('924a5bd2-34a8-11ed-a5e5-283a4d3b4979',NULL,'starter','admin',NULL,'924a5bd1-34a8-11ed-a5e5-283a4d3b4979'),('b98a3e97-34a0-11ed-a5e5-283a4d3b4979',NULL,'starter','admin',NULL,'b98a3e96-34a0-11ed-a5e5-283a4d3b4979'),('c7443de9-33c7-11ed-86cc-283a4d3b4979',NULL,'starter','admin',NULL,'c7443de8-33c7-11ed-86cc-283a4d3b4979');
/*!40000 ALTER TABLE `act_hi_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_procinst`
--

DROP TABLE IF EXISTS `act_hi_procinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `START_USER_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`) USING BTREE,
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_procinst`
--

LOCK TABLES `act_hi_procinst` WRITE;
/*!40000 ALTER TABLE `act_hi_procinst` DISABLE KEYS */;
INSERT INTO `act_hi_procinst` VALUES ('029458f3-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','1569483068132782082','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','2022-09-13 08:28:37.981','2022-09-14 08:53:03.269',87865288,'admin','sid-3AAF069C-9D1F-4109-B5D0-F6F48FD36F44',NULL,NULL,'admin 作废了当前流程申请','','请假申请流程'),('924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','1570250806270881793','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','2022-09-15 11:43:33.185',NULL,NULL,'admin','sid-3AAF069C-9D1F-4109-B5D0-F6F48FD36F44',NULL,NULL,NULL,'','请假申请流程'),('b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','1567777623949111297','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','2022-09-15 10:47:23.061',NULL,NULL,'admin','sid-3AAF069C-9D1F-4109-B5D0-F6F48FD36F44',NULL,NULL,NULL,'','请假申请流程'),('c7443de8-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','1568112800827052034','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','2022-09-14 08:54:25.300','2022-09-15 11:41:35.804',96430504,'admin','sid-3AAF069C-9D1F-4109-B5D0-F6F48FD36F44','sid-C9AF2295-51A5-44C8-AF20-AA44B6446843',NULL,NULL,'','请假申请流程');
/*!40000 ALTER TABLE `act_hi_procinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_taskinst`
--

DROP TABLE IF EXISTS `act_hi_taskinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `OWNER_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PRIORITY_` int DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_taskinst`
--

LOCK TABLES `act_hi_taskinst` WRITE;
/*!40000 ALTER TABLE `act_hi_taskinst` DISABLE KEYS */;
INSERT INTO `act_hi_taskinst` VALUES ('02989ebc-32fb-11ed-9c60-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','直属领导审批',NULL,NULL,NULL,'admin','2022-09-13 08:28:38.009',NULL,'2022-09-13 08:58:32.101',1794092,NULL,50,NULL,NULL,NULL,''),('0bb2a371-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','部门经理审批',NULL,NULL,NULL,'admin','2022-09-15 11:39:47.377',NULL,'2022-09-15 11:40:31.144',43767,NULL,50,NULL,NULL,NULL,''),('25ca055b-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-95041659-921C-4647-AA7E-007DD53297BA','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','人事专员审批',NULL,NULL,NULL,'admin','2022-09-15 11:40:31.150',NULL,'2022-09-15 11:40:43.183',12033,NULL,50,NULL,NULL,NULL,''),('2cf6dfc5-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-E6384472-DFD1-4776-83CB-1F8733961BEE','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','人事经理审批',NULL,NULL,NULL,'admin','2022-09-15 11:40:43.188',NULL,'2022-09-15 11:41:58.945',75757,NULL,50,NULL,NULL,NULL,''),('2ffb21c2-32ff-11ed-87bc-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','部门经理审批',NULL,NULL,NULL,'zhangsan','2022-09-13 08:58:32.139',NULL,'2022-09-13 09:01:07.100',154961,NULL,50,NULL,NULL,NULL,''),('3d31898f-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','部门经理审批',NULL,NULL,NULL,'admin','2022-09-15 11:41:10.416',NULL,'2022-09-15 11:41:17.053',6637,NULL,50,NULL,NULL,NULL,''),('4126dfa9-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-95041659-921C-4647-AA7E-007DD53297BA','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','人事专员审批',NULL,NULL,NULL,'admin','2022-09-15 11:41:17.057',NULL,'2022-09-15 11:41:22.696',5639,NULL,50,NULL,NULL,NULL,''),('4483ed63-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-E6384472-DFD1-4776-83CB-1F8733961BEE','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','人事经理审批',NULL,NULL,NULL,'admin','2022-09-15 11:41:22.700',NULL,'2022-09-15 11:41:28.240',5540,NULL,50,NULL,NULL,NULL,''),('47d22e0d-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-2B5363F4-D5A0-41C4-B626-E497657D21E4','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','总经理审批',NULL,NULL,NULL,'admin','2022-09-15 11:41:28.246',NULL,'2022-09-15 11:41:35.780',7534,NULL,50,NULL,NULL,NULL,''),('5a1f160b-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-2B5363F4-D5A0-41C4-B626-E497657D21E4','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','总经理审批',NULL,NULL,NULL,'admin','2022-09-15 11:41:58.949',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('8c59ad6d-32ff-11ed-87bc-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-95041659-921C-4647-AA7E-007DD53297BA','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','人事专员审批',NULL,NULL,NULL,'zhangsan','2022-09-13 09:01:07.109',NULL,'2022-09-13 13:50:20.894',17353785,NULL,50,NULL,NULL,NULL,''),('924a82ea-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','直属领导审批',NULL,NULL,NULL,'admin','2022-09-15 11:43:33.186',NULL,'2022-09-15 11:45:02.984',89798,NULL,50,NULL,NULL,NULL,''),('b990a73f-34a0-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','直属领导审批',NULL,NULL,NULL,'admin','2022-09-15 10:47:23.103',NULL,'2022-09-15 11:39:47.370',3144267,NULL,50,NULL,NULL,NULL,''),('c7491ff1-33c7-11ed-86cc-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','直属领导审批',NULL,NULL,NULL,'admin','2022-09-14 08:54:25.332',NULL,'2022-09-15 11:41:10.411',96405079,NULL,50,NULL,NULL,NULL,''),('c7d13594-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','部门经理审批',NULL,NULL,NULL,'admin','2022-09-15 11:45:02.988',NULL,'2022-09-15 11:45:38.814',35826,NULL,50,NULL,NULL,NULL,''),('d7eb539e-332a-11ed-be56-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-B9B9B816-D9E3-4A0D-97A2-C504074C7DF7','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','直属领导审批',NULL,NULL,NULL,'admin','2022-09-13 14:11:02.252',NULL,'2022-09-13 14:11:52.104',49852,NULL,50,NULL,NULL,NULL,''),('dd2c6efe-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-95041659-921C-4647-AA7E-007DD53297BA','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','人事专员审批',NULL,NULL,NULL,'admin','2022-09-15 11:45:38.818',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('f408c5f3-3327-11ed-8143-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-E6384472-DFD1-4776-83CB-1F8733961BEE','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','人事经理审批',NULL,NULL,NULL,'admin','2022-09-13 13:50:20.931',NULL,'2022-09-13 14:11:02.210',1241279,NULL,50,NULL,NULL,NULL,''),('f5a35be8-332a-11ed-be56-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','sid-2DCAD4A9-FAE9-4044-B7B5-BBADCA437929','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','部门经理审批',NULL,NULL,NULL,'admin','2022-09-13 14:11:52.112',NULL,'2022-09-14 08:53:03.240',67271128,'admin 作废了当前流程申请',50,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `act_hi_taskinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_varinst`
--

DROP TABLE IF EXISTS `act_hi_varinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `VAR_TYPE_` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_varinst`
--

LOCK TABLES `act_hi_varinst` WRITE;
/*!40000 ALTER TABLE `act_hi_varinst` DISABLE KEYS */;
INSERT INTO `act_hi_varinst` VALUES ('0294ce25-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979',NULL,'entity','json',5,NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap','2022-09-13 08:28:37.984','2022-09-13 14:11:52.109'),('02951c47-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979',NULL,'formName','string',5,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-13 08:28:37.986','2022-09-13 14:11:52.110'),('0299620d-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','02989ebc-32fb-11ed-9c60-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-13 08:28:38.015','2022-09-13 08:28:38.015'),('0299891f-32fb-11ed-9c60-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','02989ebc-32fb-11ed-9c60-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap','2022-09-13 08:28:38.015','2022-09-13 08:28:38.015'),('0bb2f192-34a8-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','0bb2a371-34a8-11ed-a5e5-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-15 11:39:47.378','2022-09-15 11:39:47.378'),('0bb2f194-34a8-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','0bb2a371-34a8-11ed-a5e5-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap','2022-09-15 11:39:47.378','2022-09-15 11:39:47.378'),('25ca537c-34a8-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','25ca055b-34a8-11ed-a5e5-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-15 11:40:31.152','2022-09-15 11:40:31.152'),('25ca537e-34a8-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','25ca055b-34a8-11ed-a5e5-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap','2022-09-15 11:40:31.152','2022-09-15 11:40:31.152'),('2cf706d6-34a8-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','2cf6dfc5-34a8-11ed-a5e5-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-15 11:40:43.189','2022-09-15 11:40:43.189'),('2cf706d8-34a8-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','2cf6dfc5-34a8-11ed-a5e5-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap','2022-09-15 11:40:43.190','2022-09-15 11:40:43.190'),('2ffbbe03-32ff-11ed-87bc-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','2ffb21c2-32ff-11ed-87bc-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-13 08:58:32.143','2022-09-13 08:58:32.143'),('2ffbe515-32ff-11ed-87bc-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','2ffb21c2-32ff-11ed-87bc-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap','2022-09-13 08:58:32.144','2022-09-13 08:58:32.144'),('3d31b0a0-34a8-11ed-a5e5-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','3d31898f-34a8-11ed-a5e5-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-15 11:41:10.417','2022-09-15 11:41:10.417'),('3d31b0a2-34a8-11ed-a5e5-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','3d31898f-34a8-11ed-a5e5-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1568112800827052034\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假23\",\"leaveReason\":\"43254\",\"startDate\":\"2022-09-08T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":8,\"principal\":\"34\",\"contactPhone\":\"12\",\"createDate\":\"2022-09-09T05:43:20.000+00:00\",\"updateDate\":\"2022-09-09T05:43:20.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"endDateStr\":\"2022-09-16 23:59:59\",\"statusStr\":\"已撤回\",\"startDateStr\":\"2022-09-09 00:00:00\",\"createDateStr\":\"2022-09-09 13:43:20\",\"updateDateStr\":\"2022-09-09 13:43:20\",\"leaveTypeStr\":\"事假\"}','java.util.LinkedHashMap','2022-09-15 11:41:10.417','2022-09-15 11:41:10.417'),('412706ba-34a8-11ed-a5e5-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','4126dfa9-34a8-11ed-a5e5-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-15 11:41:17.058','2022-09-15 11:41:17.058'),('412706bc-34a8-11ed-a5e5-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','4126dfa9-34a8-11ed-a5e5-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1568112800827052034\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假23\",\"leaveReason\":\"43254\",\"startDate\":\"2022-09-08T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":8,\"principal\":\"34\",\"contactPhone\":\"12\",\"createDate\":\"2022-09-09T05:43:20.000+00:00\",\"updateDate\":\"2022-09-09T05:43:20.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"endDateStr\":\"2022-09-16 23:59:59\",\"statusStr\":\"已撤回\",\"startDateStr\":\"2022-09-09 00:00:00\",\"createDateStr\":\"2022-09-09 13:43:20\",\"updateDateStr\":\"2022-09-09 13:43:20\",\"leaveTypeStr\":\"事假\"}','java.util.LinkedHashMap','2022-09-15 11:41:17.058','2022-09-15 11:41:17.058'),('44841474-34a8-11ed-a5e5-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','4483ed63-34a8-11ed-a5e5-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-15 11:41:22.702','2022-09-15 11:41:22.702'),('44843b86-34a8-11ed-a5e5-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','4483ed63-34a8-11ed-a5e5-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1568112800827052034\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假23\",\"leaveReason\":\"43254\",\"startDate\":\"2022-09-08T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":8,\"principal\":\"34\",\"contactPhone\":\"12\",\"createDate\":\"2022-09-09T05:43:20.000+00:00\",\"updateDate\":\"2022-09-09T05:43:20.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"endDateStr\":\"2022-09-16 23:59:59\",\"statusStr\":\"已撤回\",\"startDateStr\":\"2022-09-09 00:00:00\",\"createDateStr\":\"2022-09-09 13:43:20\",\"updateDateStr\":\"2022-09-09 13:43:20\",\"leaveTypeStr\":\"事假\"}','java.util.LinkedHashMap','2022-09-15 11:41:22.702','2022-09-15 11:41:22.702'),('47d2551e-34a8-11ed-a5e5-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','47d22e0d-34a8-11ed-a5e5-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-15 11:41:28.247','2022-09-15 11:41:28.247'),('47d25520-34a8-11ed-a5e5-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','47d22e0d-34a8-11ed-a5e5-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1568112800827052034\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假23\",\"leaveReason\":\"43254\",\"startDate\":\"2022-09-08T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":8,\"principal\":\"34\",\"contactPhone\":\"12\",\"createDate\":\"2022-09-09T05:43:20.000+00:00\",\"updateDate\":\"2022-09-09T05:43:20.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"endDateStr\":\"2022-09-16 23:59:59\",\"statusStr\":\"已撤回\",\"startDateStr\":\"2022-09-09 00:00:00\",\"createDateStr\":\"2022-09-09 13:43:20\",\"updateDateStr\":\"2022-09-09 13:43:20\",\"leaveTypeStr\":\"事假\"}','java.util.LinkedHashMap','2022-09-15 11:41:28.247','2022-09-15 11:41:28.247'),('5a1f3d1c-34a8-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','5a1f160b-34a8-11ed-a5e5-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-15 11:41:58.950','2022-09-15 11:41:58.950'),('5a1f3d1e-34a8-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','5a1f160b-34a8-11ed-a5e5-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap','2022-09-15 11:41:58.950','2022-09-15 11:41:58.950'),('8c5a229e-32ff-11ed-87bc-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','8c59ad6d-32ff-11ed-87bc-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-13 09:01:07.112','2022-09-13 09:01:07.112'),('8c5a22a0-32ff-11ed-87bc-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','8c59ad6d-32ff-11ed-87bc-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap','2022-09-13 09:01:07.112','2022-09-13 09:01:07.112'),('924a5bd3-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979',NULL,'entity','json',2,NULL,NULL,NULL,'{\"id\":\"1570250806270881793\",\"username\":\"admin\",\"leaveType\":1,\"title\":\"0915\",\"leaveReason\":\"请假病假\",\"startDate\":\"2022-09-14T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":8.9,\"createDate\":\"2022-09-15T03:19:00.000+00:00\",\"updateDate\":\"2022-09-15T03:19:00.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-15 11:19:00\",\"leaveTypeStr\":\"病假\",\"startDateStr\":\"2022-09-15 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-23 23:59:59\",\"updateDateStr\":\"2022-09-15 11:19:00\"}','java.util.LinkedHashMap','2022-09-15 11:43:33.185','2022-09-15 11:45:38.816'),('924a5bd5-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979',NULL,'formName','string',2,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-15 11:43:33.185','2022-09-15 11:45:38.817'),('924a82eb-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','924a82ea-34a8-11ed-a5e5-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-15 11:43:33.186','2022-09-15 11:43:33.186'),('924a82ed-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','924a82ea-34a8-11ed-a5e5-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1570250806270881793\",\"username\":\"admin\",\"leaveType\":1,\"title\":\"0915\",\"leaveReason\":\"请假病假\",\"startDate\":\"2022-09-14T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":8.9,\"createDate\":\"2022-09-15T03:19:00.000+00:00\",\"updateDate\":\"2022-09-15T03:19:00.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-15 11:19:00\",\"leaveTypeStr\":\"病假\",\"startDateStr\":\"2022-09-15 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-23 23:59:59\",\"updateDateStr\":\"2022-09-15 11:19:00\"}','java.util.LinkedHashMap','2022-09-15 11:43:33.186','2022-09-15 11:43:33.186'),('b98bc538-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979',NULL,'entity','json',4,NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap','2022-09-15 10:47:23.071','2022-09-15 11:41:58.948'),('b98c3a6a-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979',NULL,'formName','string',4,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-15 10:47:23.074','2022-09-15 11:41:58.948'),('b9916a90-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','b990a73f-34a0-11ed-a5e5-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-15 10:47:23.108','2022-09-15 10:47:23.108'),('b99191a2-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','b990a73f-34a0-11ed-a5e5-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap','2022-09-15 10:47:23.109','2022-09-15 10:47:23.109'),('c744b31a-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979',NULL,'entity','json',5,NULL,NULL,NULL,'{\"id\":\"1568112800827052034\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假23\",\"leaveReason\":\"43254\",\"startDate\":\"2022-09-08T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":8,\"principal\":\"34\",\"contactPhone\":\"12\",\"createDate\":\"2022-09-09T05:43:20.000+00:00\",\"updateDate\":\"2022-09-09T05:43:20.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"endDateStr\":\"2022-09-16 23:59:59\",\"statusStr\":\"已撤回\",\"startDateStr\":\"2022-09-09 00:00:00\",\"createDateStr\":\"2022-09-09 13:43:20\",\"updateDateStr\":\"2022-09-09 13:43:20\",\"leaveTypeStr\":\"事假\"}','java.util.LinkedHashMap','2022-09-14 08:54:25.303','2022-09-15 11:41:35.783'),('c745013c-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979',NULL,'formName','string',5,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-14 08:54:25.305','2022-09-15 11:41:35.783'),('c749bc32-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','c7491ff1-33c7-11ed-86cc-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-14 08:54:25.336','2022-09-14 08:54:25.336'),('c749bc34-33c7-11ed-86cc-283a4d3b4979','c7443de8-33c7-11ed-86cc-283a4d3b4979','c745013e-33c7-11ed-86cc-283a4d3b4979','c7491ff1-33c7-11ed-86cc-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1568112800827052034\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假23\",\"leaveReason\":\"43254\",\"startDate\":\"2022-09-08T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":8,\"principal\":\"34\",\"contactPhone\":\"12\",\"createDate\":\"2022-09-09T05:43:20.000+00:00\",\"updateDate\":\"2022-09-09T05:43:20.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"endDateStr\":\"2022-09-16 23:59:59\",\"statusStr\":\"已撤回\",\"startDateStr\":\"2022-09-09 00:00:00\",\"createDateStr\":\"2022-09-09 13:43:20\",\"updateDateStr\":\"2022-09-09 13:43:20\",\"leaveTypeStr\":\"事假\"}','java.util.LinkedHashMap','2022-09-14 08:54:25.336','2022-09-14 08:54:25.336'),('c7d15ca5-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','c7d13594-34a8-11ed-a5e5-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-15 11:45:02.989','2022-09-15 11:45:02.989'),('c7d15ca7-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','c7d13594-34a8-11ed-a5e5-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1570250806270881793\",\"username\":\"admin\",\"leaveType\":1,\"title\":\"0915\",\"leaveReason\":\"请假病假\",\"startDate\":\"2022-09-14T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":8.9,\"createDate\":\"2022-09-15T03:19:00.000+00:00\",\"updateDate\":\"2022-09-15T03:19:00.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-15 11:19:00\",\"leaveTypeStr\":\"病假\",\"startDateStr\":\"2022-09-15 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-23 23:59:59\",\"updateDateStr\":\"2022-09-15 11:19:00\"}','java.util.LinkedHashMap','2022-09-15 11:45:02.989','2022-09-15 11:45:02.989'),('d7ebefdf-332a-11ed-be56-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','d7eb539e-332a-11ed-be56-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-13 14:11:02.256','2022-09-13 14:11:02.256'),('d7ec3e01-332a-11ed-be56-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','d7eb539e-332a-11ed-be56-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap','2022-09-13 14:11:02.258','2022-09-13 14:11:02.258'),('dd2c960f-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','dd2c6efe-34a8-11ed-a5e5-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-15 11:45:38.819','2022-09-15 11:45:38.819'),('dd2c9611-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','dd2c6efe-34a8-11ed-a5e5-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1570250806270881793\",\"username\":\"admin\",\"leaveType\":1,\"title\":\"0915\",\"leaveReason\":\"请假病假\",\"startDate\":\"2022-09-14T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":8.9,\"createDate\":\"2022-09-15T03:19:00.000+00:00\",\"updateDate\":\"2022-09-15T03:19:00.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-15 11:19:00\",\"leaveTypeStr\":\"病假\",\"startDateStr\":\"2022-09-15 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-23 23:59:59\",\"updateDateStr\":\"2022-09-15 11:19:00\"}','java.util.LinkedHashMap','2022-09-15 11:45:38.819','2022-09-15 11:45:38.819'),('f4093b24-3327-11ed-8143-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','f408c5f3-3327-11ed-8143-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-13 13:50:20.935','2022-09-13 13:50:20.935'),('f4098946-3327-11ed-8143-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','f408c5f3-3327-11ed-8143-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap','2022-09-13 13:50:20.936','2022-09-13 13:50:20.936'),('f5a3d119-332a-11ed-be56-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','f5a35be8-332a-11ed-be56-283a4d3b4979','formName','string',0,NULL,NULL,NULL,'LeaveForm',NULL,'2022-09-13 14:11:52.115','2022-09-13 14:11:52.115'),('f5a3d11b-332a-11ed-be56-283a4d3b4979','029458f3-32fb-11ed-9c60-283a4d3b4979','02951c49-32fb-11ed-9c60-283a4d3b4979','f5a35be8-332a-11ed-be56-283a4d3b4979','entity','json',0,NULL,NULL,NULL,'{\"id\":\"1569483068132782082\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"事假123\",\"leaveReason\":\"事假123\",\"startDate\":\"2022-09-12T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":11,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-13T00:28:17.000+00:00\",\"updateDate\":\"2022-09-13T00:28:17.000+00:00\",\"status\":1,\"statusStr\":\"待提交\",\"startDateStr\":\"2022-09-13 00:00:00\",\"endDateStr\":\"2022-09-23 23:59:59\",\"createDateStr\":\"2022-09-13 08:28:17\",\"leaveTypeStr\":\"事假\",\"updateDateStr\":\"2022-09-13 08:28:17\"}','java.util.LinkedHashMap','2022-09-13 14:11:52.115','2022-09-13 14:11:52.115');
/*!40000 ALTER TABLE `act_hi_varinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_procdef_info`
--

DROP TABLE IF EXISTS `act_procdef_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`) USING BTREE,
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`) USING BTREE,
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_procdef_info`
--

LOCK TABLES `act_procdef_info` WRITE;
/*!40000 ALTER TABLE `act_procdef_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_procdef_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_deployment`
--

DROP TABLE IF EXISTS `act_re_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `VERSION_` int DEFAULT '1',
  `PROJECT_RELEASE_VERSION_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_deployment`
--

LOCK TABLES `act_re_deployment` WRITE;
/*!40000 ALTER TABLE `act_re_deployment` DISABLE KEYS */;
INSERT INTO `act_re_deployment` VALUES ('1dee0f75-34bc-11ed-bd8b-283a4d3b4979','借款申请流程',NULL,NULL,'','2022-09-15 14:03:27.899',NULL,1,NULL),('ecc2862b-2fe9-11ed-aa68-283a4d3b4979','请假流程',NULL,NULL,'','2022-09-09 10:48:46.441',NULL,1,NULL);
/*!40000 ALTER TABLE `act_re_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_model`
--

DROP TABLE IF EXISTS `act_re_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int DEFAULT NULL,
  `META_INFO_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`) USING BTREE,
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) USING BTREE,
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_model`
--

LOCK TABLES `act_re_model` WRITE;
/*!40000 ALTER TABLE `act_re_model` DISABLE KEYS */;
INSERT INTO `act_re_model` VALUES ('2b5a01b5-2db6-11ed-b237-283a4d3b4979',19,'请假流程','Leave',NULL,'2022-09-06 15:33:15.297','2022-09-13 18:32:29.023',1,'{\"name\":\"请假流程\",\"revision\":0,\"description\":\"请假申请流程模型备注\"}',NULL,'2b637796-2db6-11ed-b237-283a4d3b4979','61e66487-2db6-11ed-b237-283a4d3b4979',''),('ef530f82-34bb-11ed-bd8b-283a4d3b4979',5,'借款申请流程','Loan',NULL,'2022-09-15 14:02:09.708','2022-09-15 14:03:28.027',1,'{\"name\":\"借款申请流程\",\"revision\":0,\"description\":\"借款申请流程\"}','1dee0f75-34bc-11ed-bd8b-283a4d3b4979','ef54bd33-34bb-11ed-bd8b-283a4d3b4979','13aca214-34bc-11ed-bd8b-283a4d3b4979','');
/*!40000 ALTER TABLE `act_re_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_procdef`
--

DROP TABLE IF EXISTS `act_re_procdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `VERSION_` int NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `ENGINE_VERSION_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `APP_VERSION_` int DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_procdef`
--

LOCK TABLES `act_re_procdef` WRITE;
/*!40000 ALTER TABLE `act_re_procdef` DISABLE KEYS */;
INSERT INTO `act_re_procdef` VALUES ('Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979',3,'http://www.activiti.org/processdef','请假申请流程','Leave',1,'ecc2862b-2fe9-11ed-aa68-283a4d3b4979','请假流程.bpmn20.xml','请假流程.Leave.png',NULL,0,1,1,'',NULL,NULL),('Loan:1:1dfeff68-34bc-11ed-bd8b-283a4d3b4979',1,'http://www.activiti.org/processdef','借款流程','Loan',1,'1dee0f75-34bc-11ed-bd8b-283a4d3b4979','借款申请流程.bpmn20.xml','借款申请流程.Loan.png',NULL,0,1,1,'',NULL,NULL);
/*!40000 ALTER TABLE `act_re_procdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_deadletter_job`
--

DROP TABLE IF EXISTS `act_ru_deadletter_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_deadletter_job` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_FK_DEADLETTER_JOB_EXECUTION` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`) USING BTREE,
  KEY `ACT_FK_DEADLETTER_JOB_PROC_DEF` (`PROC_DEF_ID_`) USING BTREE,
  KEY `ACT_FK_DEADLETTER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_deadletter_job`
--

LOCK TABLES `act_ru_deadletter_job` WRITE;
/*!40000 ALTER TABLE `act_ru_deadletter_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_deadletter_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_event_subscr`
--

DROP TABLE IF EXISTS `act_ru_event_subscr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `EVENT_NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`) USING BTREE,
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_event_subscr`
--

LOCK TABLES `act_ru_event_subscr` WRITE;
/*!40000 ALTER TABLE `act_ru_event_subscr` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_event_subscr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_execution`
--

DROP TABLE IF EXISTS `act_ru_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint DEFAULT NULL,
  `IS_CONCURRENT_` tinyint DEFAULT NULL,
  `IS_SCOPE_` tinyint DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint DEFAULT NULL,
  `IS_MI_ROOT_` tinyint DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `CACHED_ENT_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime(3) DEFAULT NULL,
  `START_USER_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int DEFAULT NULL,
  `TASK_COUNT_` int DEFAULT NULL,
  `JOB_COUNT_` int DEFAULT NULL,
  `TIMER_JOB_COUNT_` int DEFAULT NULL,
  `SUSP_JOB_COUNT_` int DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int DEFAULT NULL,
  `VAR_COUNT_` int DEFAULT NULL,
  `ID_LINK_COUNT_` int DEFAULT NULL,
  `APP_VERSION_` int DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`) USING BTREE,
  KEY `ACT_IDC_EXEC_ROOT` (`ROOT_PROC_INST_ID_`) USING BTREE,
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`) USING BTREE,
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`) USING BTREE,
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_execution`
--

LOCK TABLES `act_ru_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_execution` DISABLE KEYS */;
INSERT INTO `act_ru_execution` VALUES ('924a5bd1-34a8-11ed-a5e5-283a4d3b4979',2,'924a5bd1-34a8-11ed-a5e5-283a4d3b4979','1570250806270881793',NULL,'Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979',NULL,'924a5bd1-34a8-11ed-a5e5-283a4d3b4979',NULL,1,0,1,0,0,1,NULL,'','请假申请流程','2022-09-15 11:43:33.185','admin',NULL,0,0,0,0,0,0,0,0,0,NULL),('924a5bd7-34a8-11ed-a5e5-283a4d3b4979',3,'924a5bd1-34a8-11ed-a5e5-283a4d3b4979',NULL,'924a5bd1-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979',NULL,'924a5bd1-34a8-11ed-a5e5-283a4d3b4979','sid-95041659-921C-4647-AA7E-007DD53297BA',1,0,0,0,0,1,NULL,'',NULL,'2022-09-15 11:43:33.185',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL),('b98a3e96-34a0-11ed-a5e5-283a4d3b4979',2,'b98a3e96-34a0-11ed-a5e5-283a4d3b4979','1567777623949111297',NULL,'Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979',NULL,'b98a3e96-34a0-11ed-a5e5-283a4d3b4979',NULL,1,0,1,0,0,1,NULL,'','请假申请流程','2022-09-15 10:47:23.061','admin',NULL,0,0,0,0,0,0,0,0,0,NULL),('b98c3a6c-34a0-11ed-a5e5-283a4d3b4979',5,'b98a3e96-34a0-11ed-a5e5-283a4d3b4979',NULL,'b98a3e96-34a0-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979',NULL,'b98a3e96-34a0-11ed-a5e5-283a4d3b4979','sid-2B5363F4-D5A0-41C4-B626-E497657D21E4',1,0,0,0,0,1,NULL,'',NULL,'2022-09-15 10:47:23.074',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL);
/*!40000 ALTER TABLE `act_ru_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_identitylink`
--

DROP TABLE IF EXISTS `act_ru_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `GROUP_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`) USING BTREE,
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`) USING BTREE,
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`) USING BTREE,
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`) USING BTREE,
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_identitylink`
--

LOCK TABLES `act_ru_identitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_identitylink` DISABLE KEYS */;
INSERT INTO `act_ru_identitylink` VALUES ('924a5bd2-34a8-11ed-a5e5-283a4d3b4979',1,NULL,'starter','admin',NULL,'924a5bd1-34a8-11ed-a5e5-283a4d3b4979',NULL),('b98a3e97-34a0-11ed-a5e5-283a4d3b4979',1,NULL,'starter','admin',NULL,'b98a3e96-34a0-11ed-a5e5-283a4d3b4979',NULL);
/*!40000 ALTER TABLE `act_ru_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_integration`
--

DROP TABLE IF EXISTS `act_ru_integration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_integration` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `FLOW_NODE_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATED_DATE_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_FK_INT_EXECUTION` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_INT_PROC_INST` (`PROCESS_INSTANCE_ID_`) USING BTREE,
  KEY `ACT_FK_INT_PROC_DEF` (`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_INT_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_INT_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_INT_PROC_INST` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_integration`
--

LOCK TABLES `act_ru_integration` WRITE;
/*!40000 ALTER TABLE `act_ru_integration` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_integration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_job`
--

DROP TABLE IF EXISTS `act_ru_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_FK_JOB_EXECUTION` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`) USING BTREE,
  KEY `ACT_FK_JOB_PROC_DEF` (`PROC_DEF_ID_`) USING BTREE,
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_job`
--

LOCK TABLES `act_ru_job` WRITE;
/*!40000 ALTER TABLE `act_ru_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_suspended_job`
--

DROP TABLE IF EXISTS `act_ru_suspended_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_suspended_job` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_FK_SUSPENDED_JOB_EXECUTION` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`) USING BTREE,
  KEY `ACT_FK_SUSPENDED_JOB_PROC_DEF` (`PROC_DEF_ID_`) USING BTREE,
  KEY `ACT_FK_SUSPENDED_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_suspended_job`
--

LOCK TABLES `act_ru_suspended_job` WRITE;
/*!40000 ALTER TABLE `act_ru_suspended_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_suspended_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_task`
--

DROP TABLE IF EXISTS `act_ru_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `OWNER_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PRIORITY_` int DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `FORM_KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `APP_VERSION_` int DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`) USING BTREE,
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task`
--

LOCK TABLES `act_ru_task` WRITE;
/*!40000 ALTER TABLE `act_ru_task` DISABLE KEYS */;
INSERT INTO `act_ru_task` VALUES ('5a1f160b-34a8-11ed-a5e5-283a4d3b4979',2,'b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','总经理审批','1567777623949111297',NULL,NULL,'sid-2B5363F4-D5A0-41C4-B626-E497657D21E4',NULL,'admin',NULL,50,'2022-09-15 11:41:58.949',NULL,NULL,1,'',NULL,NULL,NULL),('dd2c6efe-34a8-11ed-a5e5-283a4d3b4979',2,'924a5bd7-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','Leave:1:ecc98b0e-2fe9-11ed-aa68-283a4d3b4979','人事专员审批','1570250806270881793',NULL,NULL,'sid-95041659-921C-4647-AA7E-007DD53297BA',NULL,'admin',NULL,50,'2022-09-15 11:45:38.818',NULL,NULL,1,'',NULL,NULL,NULL);
/*!40000 ALTER TABLE `act_ru_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_timer_job`
--

DROP TABLE IF EXISTS `act_ru_timer_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_timer_job` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_FK_TIMER_JOB_EXECUTION` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`) USING BTREE,
  KEY `ACT_FK_TIMER_JOB_PROC_DEF` (`PROC_DEF_ID_`) USING BTREE,
  KEY `ACT_FK_TIMER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_timer_job`
--

LOCK TABLES `act_ru_timer_job` WRITE;
/*!40000 ALTER TABLE `act_ru_timer_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_timer_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_variable`
--

DROP TABLE IF EXISTS `act_ru_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`) USING BTREE,
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_variable`
--

LOCK TABLES `act_ru_variable` WRITE;
/*!40000 ALTER TABLE `act_ru_variable` DISABLE KEYS */;
INSERT INTO `act_ru_variable` VALUES ('5a1f3d1c-34a8-11ed-a5e5-283a4d3b4979',1,'string','formName','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','5a1f160b-34a8-11ed-a5e5-283a4d3b4979',NULL,NULL,NULL,'LeaveForm',NULL),('5a1f3d1e-34a8-11ed-a5e5-283a4d3b4979',1,'json','entity','b98c3a6c-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','5a1f160b-34a8-11ed-a5e5-283a4d3b4979',NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap'),('924a5bd3-34a8-11ed-a5e5-283a4d3b4979',1,'json','entity','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979',NULL,NULL,NULL,NULL,'{\"id\":\"1570250806270881793\",\"username\":\"admin\",\"leaveType\":1,\"title\":\"0915\",\"leaveReason\":\"请假病假\",\"startDate\":\"2022-09-14T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":8.9,\"createDate\":\"2022-09-15T03:19:00.000+00:00\",\"updateDate\":\"2022-09-15T03:19:00.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-15 11:19:00\",\"leaveTypeStr\":\"病假\",\"startDateStr\":\"2022-09-15 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-23 23:59:59\",\"updateDateStr\":\"2022-09-15 11:19:00\"}','java.util.LinkedHashMap'),('924a5bd5-34a8-11ed-a5e5-283a4d3b4979',1,'string','formName','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979',NULL,NULL,NULL,NULL,'LeaveForm',NULL),('b98bc538-34a0-11ed-a5e5-283a4d3b4979',1,'json','entity','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979',NULL,NULL,NULL,NULL,'{\"id\":\"1567777623949111297\",\"username\":\"admin\",\"leaveType\":2,\"title\":\"12345\",\"leaveReason\":\"4567\",\"startDate\":\"2022-09-07T16:00:00.000+00:00\",\"endDate\":\"2022-09-16T15:59:59.000+00:00\",\"duration\":9,\"principal\":\"2\",\"contactPhone\":\"1\",\"createDate\":\"2022-09-08T07:31:28.000+00:00\",\"updateDate\":\"2022-09-08T07:31:28.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-08 15:31:28\",\"leaveTypeStr\":\"事假\",\"startDateStr\":\"2022-09-08 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-16 23:59:59\",\"updateDateStr\":\"2022-09-08 15:31:28\"}','java.util.LinkedHashMap'),('b98c3a6a-34a0-11ed-a5e5-283a4d3b4979',1,'string','formName','b98a3e96-34a0-11ed-a5e5-283a4d3b4979','b98a3e96-34a0-11ed-a5e5-283a4d3b4979',NULL,NULL,NULL,NULL,'LeaveForm',NULL),('dd2c960f-34a8-11ed-a5e5-283a4d3b4979',1,'string','formName','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','dd2c6efe-34a8-11ed-a5e5-283a4d3b4979',NULL,NULL,NULL,'LeaveForm',NULL),('dd2c9611-34a8-11ed-a5e5-283a4d3b4979',1,'json','entity','924a5bd7-34a8-11ed-a5e5-283a4d3b4979','924a5bd1-34a8-11ed-a5e5-283a4d3b4979','dd2c6efe-34a8-11ed-a5e5-283a4d3b4979',NULL,NULL,NULL,'{\"id\":\"1570250806270881793\",\"username\":\"admin\",\"leaveType\":1,\"title\":\"0915\",\"leaveReason\":\"请假病假\",\"startDate\":\"2022-09-14T16:00:00.000+00:00\",\"endDate\":\"2022-09-23T15:59:59.000+00:00\",\"duration\":8.9,\"createDate\":\"2022-09-15T03:19:00.000+00:00\",\"updateDate\":\"2022-09-15T03:19:00.000+00:00\",\"processInstanceId\":\"\",\"status\":0,\"createDateStr\":\"2022-09-15 11:19:00\",\"leaveTypeStr\":\"病假\",\"startDateStr\":\"2022-09-15 00:00:00\",\"statusStr\":\"已撤回\",\"endDateStr\":\"2022-09-23 23:59:59\",\"updateDateStr\":\"2022-09-15 11:19:00\"}','java.util.LinkedHashMap');
/*!40000 ALTER TABLE `act_ru_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mxg_business_status`
--

DROP TABLE IF EXISTS `mxg_business_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mxg_business_status` (
  `business_key` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '业务ID',
  `process_instance_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '流程实例ID',
  `status` tinyint DEFAULT NULL COMMENT '状态',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`business_key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='业务状态实体表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mxg_business_status`
--

LOCK TABLES `mxg_business_status` WRITE;
/*!40000 ALTER TABLE `mxg_business_status` DISABLE KEYS */;
INSERT INTO `mxg_business_status` VALUES ('1567433768766676993','',0,'2022-09-07 16:45:06','2022-09-09 10:48:32'),('1567676953761906689','',0,'2022-09-08 08:51:26','2022-09-09 10:48:30'),('1567777623949111297','b98a3e96-34a0-11ed-a5e5-283a4d3b4979',2,'2022-09-08 15:31:28','2022-09-15 10:47:23'),('1567790199235923969','',5,'2022-09-08 16:21:26','2022-09-14 13:54:10'),('1568112800827052034','c7443de8-33c7-11ed-86cc-283a4d3b4979',3,'2022-09-09 13:43:20','2022-09-15 11:41:36'),('1569483068132782082','029458f3-32fb-11ed-9c60-283a4d3b4979',4,'2022-09-13 08:28:17','2022-09-14 08:53:03'),('1570208571776995329',NULL,1,'2022-09-15 08:31:11','2022-09-15 08:31:11'),('1570250806270881793','924a5bd1-34a8-11ed-a5e5-283a4d3b4979',2,'2022-09-15 11:19:00','2022-09-15 11:43:33'),('1570294851227549698',NULL,1,'2022-09-15 14:14:01','2022-09-15 14:14:01');
/*!40000 ALTER TABLE `mxg_business_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mxg_leave`
--

DROP TABLE IF EXISTS `mxg_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mxg_leave` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `username` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '申请人用户名',
  `duration` double(7,2) DEFAULT NULL COMMENT '请假时长，单位：\r\n天',
  `principal` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工作委托人',
  `contact_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '联系电话',
  `leave_type` tinyint DEFAULT NULL COMMENT '请假类型：1病假，\r\n2事假，3年假，4婚假，5产假，6丧假，7探亲，8调休，9其他',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '标题',
  `leave_reason` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '请假原因',
  `start_date` datetime DEFAULT NULL COMMENT '请假开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '请假结束时间',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='请假业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mxg_leave`
--

LOCK TABLES `mxg_leave` WRITE;
/*!40000 ALTER TABLE `mxg_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `mxg_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mxg_loan`
--

DROP TABLE IF EXISTS `mxg_loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mxg_loan` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `user_id` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '' COMMENT '申请人ID',
  `nick_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '申请人昵称',
  `money` double(15,2) DEFAULT NULL COMMENT '借款金额',
  `purpose` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '借款用途',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  `loan_date` datetime DEFAULT NULL COMMENT '借款日期',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='借款业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mxg_loan`
--

LOCK TABLES `mxg_loan` WRITE;
/*!40000 ALTER TABLE `mxg_loan` DISABLE KEYS */;
/*!40000 ALTER TABLE `mxg_loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mxg_process_config`
--

DROP TABLE IF EXISTS `mxg_process_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mxg_process_config` (
  `id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键id',
  `process_key` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '流程定义KEY',
  `business_route` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '业务申请路由名',
  `form_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '关联表单组件名',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='流程定义配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mxg_process_config`
--

LOCK TABLES `mxg_process_config` WRITE;
/*!40000 ALTER TABLE `mxg_process_config` DISABLE KEYS */;
INSERT INTO `mxg_process_config` VALUES ('1568069386601426946','Leave','Leave','LeaveForm','2022-09-09 10:50:49','2022-09-09 10:50:49'),('1570292737176698882','Loan','Loan','LoanForm','2022-09-15 14:05:37','2022-09-15 14:05:37');
/*!40000 ALTER TABLE `mxg_process_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `id` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户 ID',
  `username` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '密码，加密存储, admin/1234',
  `nick_name` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '昵称',
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '头像url',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES ('11','admin','$2a$10$EHkq/r6PTCCYEDOQYNi/ZORb8S.G8yxu4jsxqvjGWEytyrrPx5FVS','超级管理员','group1/M00/00/00/J2y7ZGA2IheAESCfAABBqgX_-Lk92.jpeg'),('12','zhangsan','$2a$10$EHkq/r6PTCCYEDOQYNi/ZORb8S.G8yxu4jsxqvjGWEytyrrPx5FVS','张三','group1/M00/00/00/J2y7ZGA2IheAESCfAABBqgX_-Lk92.jpeg'),('13','lisi','$2a$10$EHkq/r6PTCCYEDOQYNi/ZORb8S.G8yxu4jsxqvjGWEytyrrPx5FVS','李四','group1/M00/00/00/J2y7ZGA2IheAESCfAABBqgX_-Lk92.jpeg'),('14','wangwu','$2a$10$EHkq/r6PTCCYEDOQYNi/ZORb8S.G8yxu4jsxqvjGWEytyrrPx5FVS','王五','group1/M00/00/00/J2y7ZGA2IheAESCfAABBqgX_-Lk92.jpeg'),('15','xiaoming','$2a$10$EHkq/r6PTCCYEDOQYNi/ZORb8S.G8yxu4jsxqvjGWEytyrrPx5FVS','小明','group1/M00/00/00/J2y7ZGA2IheAESCfAABBqgX_-Lk92.jpeg'),('16','xiaohong','$2a$10$EHkq/r6PTCCYEDOQYNi/ZORb8S.G8yxu4jsxqvjGWEytyrrPx5FVS','小红','group1/M00/00/00/J2y7ZGA2IheAESCfAABBqgX_-Lk92.jpeg'),('17','xiaobai','$2a$10$EHkq/r6PTCCYEDOQYNi/ZORb8S.G8yxu4jsxqvjGWEytyrrPx5FVS','小白','group1/M00/00/00/J2y7ZGA2IheAESCfAABBqgX_-Lk92.jpeg'),('18','xiaodu','$2a$10$EHkq/r6PTCCYEDOQYNi/ZORb8S.G8yxu4jsxqvjGWEytyrrPx5FVS','小度','group1/M00/00/00/J2y7ZGA2IheAESCfAABBqgX_-Lk92.jpeg');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-14 21:01:01
