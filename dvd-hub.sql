-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 10, 2013 at 03:02 p.m.
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dvd-hub`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbcustomer`
--

CREATE TABLE IF NOT EXISTS `tbcustomer` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Telephone` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbcustomer`
--


-- --------------------------------------------------------

--
-- Table structure for table `tborder`
--

CREATE TABLE IF NOT EXISTS `tborder` (
  `OrderID` int(11) NOT NULL AUTO_INCREMENT,
  `OrderDate` date NOT NULL,
  `OrderStatus` varchar(50) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `CustomerID_2` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tborder`
--


-- --------------------------------------------------------

--
-- Table structure for table `tborderline`
--

CREATE TABLE IF NOT EXISTS `tborderline` (
  `OrderlineID` int(11) NOT NULL AUTO_INCREMENT,
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`OrderlineID`),
  KEY `OrderID` (`OrderID`),
  KEY `OrderID_2` (`OrderID`),
  KEY `ProductID` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tborderline`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbproduct`
--

CREATE TABLE IF NOT EXISTS `tbproduct` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(200) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Price` double NOT NULL,
  `TypeID` int(11) NOT NULL,
  `PhotoPath` varchar(30) NOT NULL,
  `Active` tinyint(4) NOT NULL,
  `TrailerLink` varchar(100) NOT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `TypeID` (`TypeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `tbproduct`
--

INSERT INTO `tbproduct` (`ProductID`, `ProductName`, `Description`, `Price`, `TypeID`, `PhotoPath`, `Active`, `TrailerLink`) VALUES
(1, 'The Smurfs 2 (2013)', 'The Smurfs team up with their human friends to rescue Smurfette, who has been kidnapped by Gargamel since she knows a secret spell that can turn the evil sorcerer''s newest creation - creatures called ', 19.9, 7, 'images/smurfs.jpg', 1, 'http://www.youtube.com/watch?v=vQbSGLaVJ5c'),
(2, 'Monsters University (2013)', 'A look at the relationship between Mike and Sulley during their days at Monsters University -- when they weren''t necessarily the best of friends.', 19.9, 7, 'images/monstersuni.jpg', 1, 'http://www.youtube.com/watch?v=ODePHkWSg-U'),
(7, 'Dorothy and the Witches of Oz (2012)', 'Children''s author Dorothy Gale makes a decent living continuing her grandfather''s series of Oz books. When a new agent enters the scene, Dorothy moves to New York city. In the midst of a major busines', 19.9, 7, 'images/witchesofoz.jpg', 1, 'http://www.youtube.com/watch?v=EN9T40ECIGE'),
(8, 'Escape from Planet Earth (2013)', 'Astronaut Scorch Supernova finds himself caught in a trap when he responds to an SOS from a notoriously dangerous alien planet.', 19.9, 7, 'images/escapefromplanet.jpg', 1, 'http://www.youtube.com/watch?v=gkJXlIPPYe0'),
(11, 'The Croods (2013)', 'After their cave is destroyed, a caveman family must trek through an unfamiliar fantastical world with the help of an inventive boy.', 19.9, 7, 'images/thecroods.jpg', 1, 'http://www.youtube.com/watch?v=zBdiFU6DgpE'),
(12, 'The Great Gatsby (2013)', 'A Midwestern war veteran finds himself drawn to the past and lifestyle of his millionaire neighbor.', 29.9, 6, 'images/thegreatgatsby.jpg', 1, 'http://www.youtube.com/watch?v=TaBVLhcHcc0'),
(13, 'Gangster Squad (2013)', 'Los Angeles, 1949: A secret crew of police officers led by two determined sergeants work together in an effort to take down the ruthless mob king Mickey Cohen who runs the city.', 29.9, 6, 'images/gangstersquad.jpg', 1, 'http://www.youtube.com/watch?v=jCTYqdx6LzY'),
(14, 'The place beyond the Pines (2012)', 'A motorcycle stunt rider turns to robbing banks as a way to provide for his lover and their newborn child, a decision that puts him on a collision course with an ambitious rookie cop navigating a depa', 29.9, 6, 'images/theplacebeyond.jpg', 1, 'http://www.youtube.com/watch?v=G07pSbHLXgg'),
(15, 'A single Shot (2013)', 'The tragic death of a beautiful young girl starts a tense and atmospheric game of cat and mouse between hunter John Moon and the hardened backwater criminals out for his blood.', 29.9, 6, 'images/singleshot.jpg', 1, 'http://www.youtube.com/watch?v=iVmYiPBctmE'),
(16, 'Lincoln (2012)', 'As the Civil War continues to rage, America''s president struggles with continuing carnage on the battlefield and as he fights with many inside his own cabinet on the decision to emancipate the slaves.', 29.9, 6, 'images/lincoln.jpg', 1, 'http://www.youtube.com/watch?v=KJVuqYkI2jQ'),
(17, 'Elysium (2013)', 'Set in the year 2154, where the very wealthy live on a man-made space station while the rest of the population resides on a ruined Earth, a man takes on a mission that could bring equality to the pola', 29.9, 3, 'images/elysium.jpg', 1, 'http://www.youtube.com/watch?v=oIBtePb-dGY'),
(18, 'After Earth (2013)', 'A crash landing leaves Kitai Raige and his father Cypher stranded on Earth, a millennium after events forced humanity''s escape. With Cypher injured, Kitai must embark on a perilous journey to signal f', 29.9, 3, 'images/afterearth.jpg', 1, 'http://www.youtube.com/watch?v=CZIt20emgLY'),
(19, 'Oblivion (2013)', 'A veteran assigned to extract Earth''s remaining resources begins to question what he knows about his mission and himself.', 29.9, 3, 'images/oblivion.jpg', 1, 'http://www.youtube.com/watch?v=HQ0iiqyJ7BU'),
(20, 'Ender''s Game (2013)', '70 years after a horrific alien war, an unusually gifted child is sent to an advanced military school in space to prepare for a future invasion.', 29.9, 3, 'images/endersgame.jpg', 1, 'http://www.youtube.com/watch?v=vP0cUBi4hwE'),
(21, 'Robot and Frank (2012)', 'Set in the near future, an ex-jewel thief receives a gift from his son: a robot butler programmed to look after him. But soon the two companions try their luck as a heist team.', 29.9, 3, 'images/robotandfrank.jpg', 1, 'http://www.youtube.com/watch?v=q4y8YAMPFhk'),
(22, 'The Avengers (2012)', 'Nick Fury of S.H.I.E.L.D. brings together a team of super humans to form The Avengers to help save the Earth from Loki and his army.', 29.9, 2, 'images/theavengers.jpg', 1, 'http://www.youtube.com/watch?v=eOrNdBpGMv8'),
(23, 'The Dark Knight Rises (2012)', 'Eight years on, a new evil rises from where the Batman and Commissioner Gordon tried to bury it, causing the Batman to resurface and fight to protect Gotham City... the very city which brands him an e', 29.9, 2, 'images/thedarkknight.jpg', 1, 'http://www.youtube.com/watch?v=g8evyE9TuYk'),
(24, 'The Expendables 2 (2012)', 'Mr. Church reunites the Expendables for what should be an easy paycheck, but when one of their men is murdered on the job, their quest for revenge puts them deep in enemy territory and up against an u', 29.9, 2, 'images/theexpendables.jpg', 1, 'http://www.youtube.com/watch?v=TgEqVYcryWc'),
(25, 'The Bourne Legacy ', 'An expansion of the universe from Robert Ludlum''s novels, centered on a new hero whose stakes have been triggered by the events of the previous three films.', 29.9, 2, 'images/bourne.jpg', 1, 'http://www.youtube.com/watch?v=jSzy9qQ3mDE'),
(26, 'The Amazing Spider-Man (2012) ', 'Peter Parker finds a clue that might help him understand why his parents disappeared when he was young. His path puts him on a collision course with Dr. Curt Connors, his father''s former partner.', 29.9, 2, 'images/spiderman.jpg', 1, 'http://www.youtube.com/watch?v=atCfTRMyjGU'),
(27, 'Evil Dead (2013)', 'Five friends head to a remote cabin, where the discovery of a Book of the Dead leads them to unwittingly summon up demons living in the nearby woods. The evil presence possesses them until only one is', 25.9, 5, 'images/evildead.jpg', 1, 'http://www.youtube.com/watch?v=FKFDkpHCQz4'),
(28, 'Carrie (2013)', 'A sheltered high school girl unleashes her newly developed telekinetic powers after she is pushed too far by her peers.', 25.9, 5, 'images/carrie.jpg', 1, 'http://www.youtube.com/watch?v=SdoVioPv0fs'),
(29, 'The Helpers (2012)', 'Seven friends on a road trip to Las Vegas break down near a rest-stop motel, where they encounter a seemingly helpful group of people. Convinced to stay overnight, the friends wake up in their rooms t', 25.9, 5, 'images/thehelpers.jpg', 1, 'http://www.youtube.com/watch?v=HjG4ijJ75Eg'),
(30, 'Bela Kiss (2013)', 'Bela Kiss was one of the the most brutal serial killers, who killed 23 young women during the beginning of the first World War. The blood-drained bodies were found in metal barrels, conserved in alcoh', 25.9, 5, 'images/belakiss.jpg', 1, 'http://www.youtube.com/watch?v=u5ttzongdOA'),
(31, 'The Lords of Salem (2012)', 'Heidi, a radio DJ, is sent a box containing a record -- a "gift from the Lords." The sounds within the grooves trigger flashbacks of her town''s violent past. Is Heidi going mad, or are the Lords back ', 25.9, 5, 'images/lordsofsalem.jpg', 1, 'http://www.youtube.com/watch?v=nT14gtUCNw8'),
(32, 'Hansel and Gretel Witch Hunters (2013)', 'Hansel & Gretel are bounty hunters who track and kill witches all over the world. As the fabled Blood Moon approaches, the siblings encounter a new form of evil that might hold a secret to their past.', 29.9, 4, 'image/hanselandgretel.jpg', 1, 'http://www.youtube.com/watch?v=9246msCh7x4'),
(33, '6 Souls (2013)', 'A female forensic psychiatrist discovers that all of one of her patient''s multiple personalities are murder victims. She will have to find out what''s happening before her time is finished.', 29.9, 4, 'images/6souls.jpg', 1, 'http://www.youtube.com/watch?v=Lnzhbj7396A'),
(34, 'Gravity (2013)', 'Astronauts attempt to return to earth after debris crashes into their space shuttle, leaving them drifting alone in space.', 29.9, 4, 'images/gravity.jpg', 1, 'http://www.youtube.com/watch?v=doLizp4PJmc'),
(35, 'Riddick 3 (2013)', 'No description avaliable.', 29.9, 4, 'images/riddick.jpg', 1, 'http://www.youtube.com/watch?v=UYDtVwyekZY'),
(36, 'Sin City: A Dame to Kill For (2013)', 'The town''s most hard boiled citizens cross paths with some of its more reviled inhabitants.', 29.9, 4, 'images/sincity.jpg', 1, 'http://www.youtube.com/watch?v=UCPTWa-eP-8'),
(37, 'The Hangover III (2013)', 'When one of their own is kidnapped by an angry gangster, the Wolf Pack must track down Mr. Chow, who has escaped from prison and is on the lam.', 29.9, 1, 'images/thehangover.jpg', 1, 'http://www.youtube.com/watch?v=KLAkxSjs8ZY'),
(38, 'Anchorman: The Legend Continues (2013)', 'The continuing on-set adventures of San Diego''s top rated newsman.', 29.9, 1, 'images/anchorman.jpg', 1, 'http://www.youtube.com/user/hollywoodbackstage?v=TS0Wh69Idmw'),
(41, 'Scary Movie: V (2013)', 'A couple begin to experience some unusual activity after bringing their newborn son home from the hospital. With the help of home-surveillance cameras and a team of experts, they learn they''re being stalked by a nefarious demon.', 29.9, 1, 'images/scarymovie.jpg', 1, 'http://www.youtube.com/watch?v=RMDZ8M47j0I'),
(42, 'This is the End (2013)', 'While attending a party at James Franco''s house, Seth Rogen, Jay Baruchel and many other celebrities are faced with the apocalypse.', 29.9, 1, 'images/thisistheend.jpg', 1, 'http://www.youtube.com/watch?v=j463qtCRlxk'),
(43, 'Kick Ass 2 (2013) ', 'The costumed high-school hero Kick-Ass joins with a group of normal citizens who have been inspired to fight crime in costume. Meanwhile, the Red Mist plots an act of revenge that will affect everyone Kick-Ass knows.', 29.9, 1, 'images/kickass.jpg', 1, 'http://www.youtube.com/watch?v=7UMbwxbgv8U');

-- --------------------------------------------------------

--
-- Table structure for table `tbproducttype`
--

CREATE TABLE IF NOT EXISTS `tbproducttype` (
  `TypeID` int(11) NOT NULL AUTO_INCREMENT,
  `Typename` varchar(100) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `DisplayOrder` int(11) NOT NULL,
  PRIMARY KEY (`TypeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbproducttype`
--

INSERT INTO `tbproducttype` (`TypeID`, `Typename`, `Description`, `DisplayOrder`) VALUES
(1, 'Comedy', 'New release Comedy DVDs', 1),
(2, 'Action', 'New release Action DVDs', 2),
(3, 'Sci-fi', 'New release Sci-fi DVDs', 3),
(4, 'Thriller', 'New release Thriller DVDs', 4),
(5, 'Horror', 'New release Horror DVDs', 5),
(6, 'Drama', 'New release Drama DVDs', 6),
(7, 'Kids', 'New release Kids DVDs', 7);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tborder`
--
ALTER TABLE `tborder`
  ADD CONSTRAINT `tborder_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `tbcustomer` (`CustomerID`);

--
-- Constraints for table `tborderline`
--
ALTER TABLE `tborderline`
  ADD CONSTRAINT `tborderline_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `tborder` (`OrderID`),
  ADD CONSTRAINT `tborderline_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `tbproduct` (`ProductID`);

--
-- Constraints for table `tbproduct`
--
ALTER TABLE `tbproduct`
  ADD CONSTRAINT `tbproduct_ibfk_1` FOREIGN KEY (`TypeID`) REFERENCES `tbproducttype` (`TypeID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
