/*
 Navicat Premium Data Transfer

 Source Server         : 是csdm啊
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : 47.101.193.185:3306
 Source Schema         : bbs

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 27/12/2018 20:38:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
                            `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '主键',
                            `userid` int(5) NULL DEFAULT NULL COMMENT '外键->表user',
                            `title` varchar(800) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章标题\r\n文章标题',
                            `author` varchar(800) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章作者',
                            `date` datetime NULL DEFAULT NULL COMMENT '发布时间',
                            `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容',
                            PRIMARY KEY (`id`) USING BTREE,
                            INDEX `userid`(`userid`) USING BTREE,
                            CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1013 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1001, 1005, '五叔的女儿', '是老杨啊', '2018-12-21 00:21:26', '在北京一个没有雾霾的周日下午，身上洒着冬日下午的一缕余阳，坐在书桌旁为大家继续讲述五叔身后的故事。\r\n\r\n五叔的一生是一个典型的悲剧，但这样的事例在西北农村绝不是个例，多少家庭因为家里的主劳动力遭受意外后导致家庭落败，甚至家破人亡都不夸张。一方面中国农村家庭收入严重依赖主劳动力且收入单一，另一方面社会保障体系不完善导致家庭抗风险系数为零。家里主劳动力一旦伤残，家庭将会遭受毁灭性打击。\r\n\r\n读这篇文章之前，强烈建议大家先阅读《五叔的一生》这篇文章，本篇文章是对这篇文章的一个后续补充。\r\n\r\n上篇文章讲到五叔是去接女儿上班的时候发生的意外，那个时候孩子才四五岁，五叔出事半年后嫂子就带着女儿走了，毕竟五叔家里就留下这个一个女儿，大家也都担心这个孩子的去向。后来回村就断断续续的听说嫂子和另外一个人重新组建了家庭，大家想着毕竟有一个完整的家庭也挺好，再后来就没有什么消息了，直到今年国庆节。\r\n\r\n今年国庆为了躲避出行大军早早的回了老家，召集着姐姐、弟弟妹妹在小姨家一起搞烧烤，正在惬意的享受假期的自由时光，村里的一个大妈带着五叔的女儿来到了小姨家，大家大吃一惊，原本印象中的小女孩已经变成了小姑娘，毕竟已经过去了七八年，第一眼全然认不出来了。\r\n\r\n大妈的邻居就是五叔的哥哥一家，五叔的哥哥一家全部出门打工去了，整个屋子空无一人。大妈说下午她正在做饭，她听到隔壁有人不断的在敲门，并且不断的喊着 XX（五叔哥哥的女儿） 的名字，足足敲了十几分钟没有人答应，就一个人站在门外哭。\r\n\r\n大妈听见哭声就过来看了一下，发现一个小姑娘蹲在门上嚎嚎大哭，大妈心想不对呀，这是不是五叔的那个女儿？于是上去就问你找谁，你是不是五叔的那个女儿 xx。这一问才知道这她就是五叔留下来的那个女儿，12岁，不知道一个小女孩怎么隔了这么多年找了回来。\r\n\r\n大妈把小女孩叫到家里，给做了一些好吃的，吃完饭之后就拉到了小姨家，小姨家曾经和五叔家走得近一些，另外人也多热闹一些。孩子来到小姨家之后就被大家围了起来，毕竟我们都有一些血缘关系，大家都非常关心她的情况，先给她妈妈打了个电话，告诉她孩子在我们家，让她的母亲不要担心，晚点我们会给送回去。\r\n\r\n和姨夫、小女孩一番交流之下才知道他们这两年的生活，嫂子从五叔家离开之后，一个人带着孩子打了两年工，随后又改嫁到另外一个条件也不是特别好的家庭，随后把小女孩放到了外婆家生活了一段时间。\r\n\r\n改嫁后没多久生下来另外一个孩子，也是女儿，又过了两年，两人生活上有矛盾就又离婚了，嫂子就在县城租了一个小房子，把两个孩子接到身边自己来抚养，一个单身女性带着两个孩子，想想就知道生活得有多不容易。\r\n\r\n就这样五叔的女儿至少待在了她妈妈的身边，一直在县城读书，现在已经到了五年级，刚好国庆学校放假了 ，可能有一天在家特别的想自己的爸爸，就没有告诉她妈妈，一个人从县城走了回来。\r\n\r\n县城到我家步行大概有30分钟的路程，开车也就十分钟左右，虽说也不是特别远，但是一个12岁的小女孩，从五叔家走的时候也才5岁左右，隔了七八年愣生生的一个人走了回来，不知道是什么力量支撑着她，姨夫说，娃知道她的家在这里，肯定就会回来的，虽然家里现在空无一人，但这是她出生的地方呀！\r\n\r\n天快黑的时候，姐开车把孩子送到了嫂子家里，临走的时候家里给女孩塞了一点钱，说了一些安心话，让她知道有困难的时候记住这边还有一些亲戚可以联系。\r\n\r\n回到北京后，久久不能忘记小女孩的模样，忘不掉小女孩那种无家可归的眼神，忘不掉小女孩对大家既陌生又渴望亲情安抚的那副模样。嫂子和小女孩以后的路还有很长，我们只能寄希望她们以后的日子可以越过越好，却又有深深的无能为力的感觉。\r\n\r\n中国在不断的发展，人们的生活质量也真真切切的发生了天翻地覆的变化，整体都在不断的变好，但是对于弱势的农村来讲，仍然有很多很多脆弱的家庭，经不起任何风吹雨打，这是现实，很沉重，也很真实。\r\n\r\n一个国家是不是真的强大，一定不是出了多少英明领袖，造了多少核弹，有多少外汇储备，在奥运会拿了多少金牌，GDP增长率多高，修建了多少高铁，盖了多少世界大楼。。。这些和处在社会底端的那些人真的没有什么关系。\r\n\r\n一个国家怎样对待弱势群体，是一个社会最柔软的部分，恰恰也是一个社会最强大的部分。');
INSERT INTO `article` VALUES (1002, 1005, '有点不淡定了', '是老杨啊', '2018-12-21 00:21:48', '早上一大早看到一则新闻：\r\n\r\n12月6日早间，据外媒环球邮报报道称，因华为涉嫌违反美国对伊朗的出口禁令，加拿大应美国方面要求，近日在温哥华逮捕了华为副董事长、全球首席财务官孟晚舟，她或将随后被引渡到美国，就涉嫌违反美国对伊朗的出口禁令一事接受调查。而孟晚舟是华为创始人任正非的长女。\r\n\r\n之前美国制裁中兴的时候国内还有一堆人说中兴是活该，说是因为中兴违反了美国法律，法律个毛线呀，美国说大家都不要跟伊朗玩了，我们和伊朗在吵架不和他玩了，然后给全世界的国家都说，你们也不能和伊朗玩了，因为我是美国我说了算。\r\n\r\n大家想象下这算什么道理，这不就是无赖吗？美国说因为你们使用了我们的零部件，因此就不能使用这些零部件的产品卖给伊朗，卖了我就制裁你，但是在如今全球化格局分工合作之下，没有哪家大的厂商不使用别家的零件，美国的武器也不敢说完全不使用中国制造的零部件。\r\n\r\n美国的这些行为本来就违反了国际法，它引用自己国内的法律对中国企业进行制裁，这TM什么道理呀，我中国的企业行为还需要遵守美国的法律？所以大国之间的竞争从来就不分什么正义，利益最大。只要你威胁到了美国的利益，你就犯法了。\r\n\r\n国际法中只承认美国国内法有管辖美国主权领土境内事务。他国企业或个人无义务在美国境外遵守美国国内法。只要中兴不是在美国领土领海范围内将货物卖给伊朗，哪怕就是在美国领海外一海里的公海交易，美国国内法也无权干涉。\r\n\r\n这些年中国各方面不断的崛起，给美国带来了非常大的压力，于是各个方面对中国进行限制打压，在这之前所有的手段还算文明，但这次的做法完全就是耍流氓，已经到了无下限的地步。\r\n\r\n前段时间华为在各个国家被禁止 5G 网络建设，其实就是次事件的一个先兆，中国的一个企业被一个国家举全国之力来限制打压，还能说明什么呢？美国对华为的打压其实就是因为华为太过强大了，已经威胁到了他们的核心利益。\r\n\r\n网络上流程着这么一段，真实性有待验证：\r\n\r\n17年4月华为董事余承东亲自开车在五洲宾馆接走在深圳参加IT峰会的华裔著名科学家张首晟 \r\n18年9月张首晟获得欧洲物理奖，其团队掌握的量子自旋霍尔效应将带来世界芯片革命\r\n18年12月1日华为CFO任正非女儿与张首晟将共同出席一个在阿根廷的晚宴\r\n18年12月1日华为CFO任正非女儿孟晚舟在加拿大转机被加拿大扣留并将引渡到美国\r\n18年12月1日华裔科学家在美跳楼自杀 \r\n18年12月3日当下世界最先进的芯片光刻机制造商荷兰ASML公司发生火灾毁了了中国商家订购的价值1.2亿美金的EUV光刻机\r\n\r\n再来说说加拿大，可以说就是美国的一条走狗，当然现在这种国家很多，加拿大政府逮捕了一个可能涉嫌违反美国法律的中国国民，如果说中国国民在加拿大违反了当地的法律逮捕也可以理解，但是因为违反了美国法律被逮捕这算什么？你的国家还有没有主权？\r\n\r\n事件发生之后，华为官方本来想低调处理此事件，中华人民共和国驻加拿大大使馆网站也发布了相关消息称，加拿大警方应美方要求逮捕一个没有违反任何美、加法律的中国公民，对这一严重侵犯人权的行为，中方表示坚决反对并强烈抗议。\r\n\r\n在美国驻华大使馆的官方微博账号下，有中国网友留言表示，美国对中国企业“各种制裁打压，现在还对一个身在加拿大的中国公民逮捕，限制人身自由。美国有那么怕中国崛起么？这真的是全球第一超级大国的风范么？”\r\n\r\n也有人表示，原来挺认可美国的制度，但现在孟女士无缘无故被扣留，“(让)我对美国有了新看法。即便原来的美国是伟大的，今天的她已经变成了一个流氓样。\r\n\r\n而在加拿大驻华大使馆的官方账号下，则有大批网友质疑加拿大已从一个主权国家蜕变成为“美国的打手”。他们称，加拿大的行为侵犯人权，并大呼请加方“放人”。\r\n\r\n国家存亡，匹夫有责，当你仍然是一个中国人的时候，请你选择支持你的国家。美国的自由，人权，道德，法律在国与国的利益之间根本一文不值，全是虚假的谎言。\r\n\r\n以斗争求和平则和平存，以妥协求和平则和平亡。\r\n丢掉幻想，准备斗争。');
INSERT INTO `article` VALUES (1003, 1006, '半个互联网技术热销书的作者聚在了一起', '臭弟弟', '2018-12-21 00:21:52', '周六有幸被邀请参加了博文视点《架构技术图书出版研讨会》，其实被邀请过去还是挺诚恐的，因为我还不是博文视点的图书作者，只是和其合作给大家送过几次书。这次跟着众多著名作者一起参加这个会议，主要还是抱着学习的态度去参加的，探讨对写作和技术的认识。\r\n\r\n博文视点是电子工业出版社下属的计算机图书出版分社，可以说是电子工业出版社中单独分离出来，主要专注于中国互联网行业的一个分公司。博文视点的图书主要包括：产品、运营、技术和电商，但从他们出版的书籍中可以发现，其中技术类的书籍占了绝大部分，技术圈内很多热门图书都来自于博文视点。\r\n\r\n说实话这些年我挺烦参加一些技术论坛，一方面是技术交流质量的原因，另外主要还是因为太多的商业因素掺杂到了其中，但这也能理解，毕竟组织者是需要花费很多精力、财力。没这些广告主的赞助，可能都不会有各种技术峰会的举行。昨天参加的作者图书探讨会算是一个质量很高的交流会议，和以往参加的技术峰会不太一样。\r\n\r\n首先出版社介绍了一下参加研讨会的嘉宾，看了一下名单都是各个领域的大咖，有一线大厂的知名开发者、知名公司的CTO、创业公司技术负责人等，但他们在这里都有同一个身份，那就是都是热销图书的作者，有一个大合影大家可以瞅瞅都认识几个。\r\n\r\n');
INSERT INTO `article` VALUES (1004, 1005, '一线大厂逃离或为新常态？', '是老杨啊', '2018-12-21 17:07:31', '按照这份公告的爆料，小米员工从北京“搬迁”到武汉南京后，工资待遇基本不变，公司会为员工提供15天酒店住宿补贴，标准为400元/天。除此以外，还有3万元的搬迁福利费，但是领取过的员工必须在新工作地服务满2年。\r\n\r\n住房方面，小米可为员工提供人才公寓，武汉租金为1000元/套，南京租金为2000-3000元/套，想要购房的员工不受当地限购政策影响，可立即获得购房资格。\r\n\r\n去年小米先后在武汉、南京建立了总部。其中小米武汉总部以万人规模来规划的，并被定位为“超大研发总部”。而位于南京的总部则致力于新技术、新业态的突破和智能硬件、物联网的发展，通过整合上下游产业和企业，打造小米生态链。\r\n\r\n情况基本属实\r\n从一位小米员工处获悉，搬迁邮箱通知仅仅针对某些部门员工，其称自己并没有收到相关邮件。另外一位小米程序员则表示“搬迁早就在做了，北京的五彩城早不够用了”。“不是迁移，是基于未来做的新生布局，应该会有北京的骨干去往武汉、南京推进当地的业务发展。”一位接近小米集团高层的人士透露小米“南飞”。\r\n\r\n经过这两天的持续发酵，小米官方也没有对此进行澄清，基本证实情况属实，小米必定不会将所有业务全部搬迁到武汉南京，为了平滑过渡，“搬迁”可能是一个缓慢的过程。大胆猜测，北京未来肯定还需要留有研发中心，但武汉南京研发团队也会持续壮大成为小米研发体系的重要部分。\r\n\r\n其实在这之前，小米已经在武汉南京建立总部。\r\n\r\n小米集团创始人雷军是湖北人，他的大学时光是在武汉大学度过。2017年武汉市政府、东湖高新区分别与小米、金山、顺为资本签署战略合作框架协议，武汉也有望成为小米的第二总部。雷军当时表示，小米将在武汉投入230亿元。武汉作为中国的强二线城市，这些年在互联网行业发展迅速，人才环境等方面也有了一定的积累。\r\n\r\n同年10月，小米创始人雷军在微博上表示：小米6年前就在南京设立了研究中心，现在手机和MIUI研发团队在南京有将近100人，目前正在大规模扩招，未来会成为小米最主要的研发中心之一。小米在南京，还有供应链、营销等部门的分支机构和多家生态链企业，可见此事小米公司早有规划。\r\n\r\n一线互联网大厂逃离北上广深或为新常态\r\n2016年5月，一篇名为《别让华为跑了》的文章在朋友圈广泛传播，深圳市政府为了防止华为搬迁，甚至开了专题研讨会来研究如何防止类似事件发生，同时组织专人帮助华为解决所面临的问题，但华为终究还是跑了。\r\n\r\n今年7月1日，华为公司正式搬迁，40辆8吨货车，共60车次，搬迁车辆往返深圳和东莞松山湖，搬家货车会有一个华为标识，“华为搬迁专用车辆”。而7月2日，有2700人从深圳到东莞松山湖溪流坡村上班，估计车辆约1500辆（其中大巴70辆）。\r\n\r\n华为搬迁的背后，折射出企业壮大后，对研发成本、城市房地产成本和人员成本急剧扩大，而导致各类成本增加的多种考量。华为搬迁到东莞之后，拥有了可以扩展的大批量土地和当地的优惠政策，同时给研发人员带来了非常大的福利措施。\r\n\r\n华为员工搬迁到东莞后可以享受到福利分房。按照网传分配方案，不区分楼栋、楼层、户型，单价全部统一为8500元/平米（当地房价2万多），以两房居多，各个部门分配的房型比例也一致，一房占12%，二房占比76%，三房占比12%。分配方案采取的是积分排序形式，入职年限、东莞常驻年限、年度绩效、公司荣誉称号等都能加分，而分房对象也设置了一定门槛，需要华为15-19级，且入职满3年以上正式员工，还要是在东莞常驻或2018年在东莞常驻。\r\n\r\n其实在这之前，华为、中兴就在西安搭建了研发中心，并且都在西安修建了企业园区，可以容纳几万人同时办公。华为、中兴为什么将大量的研发力量迁移到西安，无非是看上西安便宜的土地和人力成本，西安高校林立，人才储备充分并且成本更低，综合起来比深圳更有竞争力。\r\n\r\n二线城市的历史机遇\r\n尽管小米此次深化南京、武汉两大中心业务发展的行为与华为有所区别，但我认为，这可能是一线大厂将部分产业链从一线城市转往二线城市的缩影。前有无人机“霸主”大疆科技在东莞松山湖设立全球研发和销售中心、中兴通讯在广东省河源市兴建生产基地，后有阿里巴巴西北总部落户西安等。\r\n\r\n在2010年的时候，二线城市的互联网发展非常落后，作为一个程序员如果你想去一家互联网公司工作只能选择北上广深杭。在2013年的时候西安、成都等二线城市的互联网公司还凤毛麟角，到了现在，随着互联网的迅速发展普及，以及很多一线人才回归到二线，很多强二线城市互联网企业已经慢慢变得丰富起来了，从各地火爆的创业街、孵化器就可以看出一二。\r\n\r\n首先发展起的强二线城市是杭州，因为阿里巴巴和网易的存在培养了一批互联网人，这些大厂的员工离职之后，又创建或者投资了一批中小型互联网公司。杭州的创业氛围很好，出现了很多初创的独角兽公司，比如:曹操专车、51信用卡、菜鸟网络大等，甚至已经出现了“杭漂”这个流行词语，“杭漂”也慢慢成为了很多程序员的首选。\r\n\r\n接下来比较突出的是成都，成都在手游领域发展很不错，成都政府的招商引资在所有的二线城市中做得最好。成都排名高的核心原因是知名互联网公司在这里设立分公司，腾讯成都分公司、京东成都分公司、阿里巴巴成都分公司等一系列的分公司。\r\n\r\n强二线城市中还有武汉、西安、南京等城市，近两年在互联网行业发展非常迅速。各地政府纷纷创建了各种园区和政策来吸引一线大厂落地，并对独角兽企业在本地建立总部给予特殊政策优惠。慢慢的这些强二线城市已经有了星星之火燎原之势，未来上述这些二线城市的互联网行业发展值得期待。\r\n\r\n但凡互联网企业发展比较快的城市，都离不开一个最核心的因素，那就是人才的支撑。北京之所以成为互联网的中心，最重要的原因之一就是众多高校的支撑。中国高等教育实力较强的城市包括北京、上海、武汉、南京和西安，成都的高等教育发展算不上很强，但是绝对不弱。成都之所以能够超越武汉、南京和西安，除去人才的吸引力之外，那就是环境的吸引力。\r\n\r\n回还是不回？\r\n一线程序员是否回归二线老家是一个非常热门的问题，也是每个大龄程序员常常思考的一个问题，其中也包含我。作为一个在一线搬砖的程序员来讲，在北京的生活质量奇差，互联网企业更甚，常年996不说，上下班往往需要花费1-2小时的通勤时间。\r\n\r\n一线城市房价在16-18年又经历了一波高涨，想通过敲代码实现买房的希望基本已经破灭，能真正依靠自己能力在北京买房的人少之又少。随着一线城市城中村拆迁的推进，房租市场也迎来了急剧上涨，前段时间北京甚至出现了几个租聘企业竞相挣抢房源的情况，我租住的小区5年时间房租刚好翻倍。\r\n\r\n以前是在一线城市买不起房，现在可能租都租不起，二线城市的人们往往羡慕一线工作者的高工资，却不知道工资的很大一部分都要上交给房东，所以有时候我们会开玩笑说，在北京是给房东打工。另外在一线如果有孩子，孩子上学也是一个非常大的问题，好多小夫妻就是因为孩子上学的问题选择了离开。\r\n\r\n上次坐火车从北京回西安，遇到一个曾经的老北漂大姐带着孩子来北京旅游，在一个车厢里面聊了起来，大姐和我们聊起了她曾经在北京的工作和生活，作为一个报社的编辑，曾经每天坐两三个小时的车上下班，晚上经常由于加班错过最后一班地铁，晚上只能睡20元一晚的床位。说起曾经的苦逼北漂经历，大姐唏嘘不已，并不断语重心长的对我说，要早做打算，并不时庆幸自己早日结束了北漂，在西安买房成了家。\r\n\r\n现在很多二线城市开放了户口，只要提交资料就可以落户。比如：西安，只要网上填个资料就行，都不需要跑路。二线城市的房价虽然也大涨了一下，但是使使劲还是能够得上，所以回归二线城市之后，房子、车子、子女教学基本可以一步到位。（最近二线城市房价也有降价的趋势，买房的朋友慎重考虑）\r\n\r\n同时回归二线也需要考虑一些问题，其中就有薪资的巨大落差，很多人回二线城市之后接受不了薪资的巨大落差又返回一线。比起薪资的差异来讲还有一方面是文化差异，很多一线城市的互联网企业，工作方式和文化比较高大上，回归二线后大多公司比较讲究实际，可能会有所不适应。另外换工作时，比起一线城市海量的工作机会，二线城市可选的范围将大大减少。\r\n\r\n所以说回还是不回？需要看每个人的情况，如果已经在动摇中，恰好企业有相应的政策补贴，响应公司安排无非是一件好事。如果还想在北京拼搏几年，或者自己的老家城市还真回不去，留下来也未必是一件坏事，毕竟一线城市的工作机会和发展机遇较多。总之，到哪里都是需要奋斗的，Follow your heart！');
INSERT INTO `article` VALUES (1005, 1005, '为什么技术公众号都要接广告？', '是老杨啊', '2018-12-21 17:07:47', '一切开始于2016年的那个夏天，在互联网金融公司我从一名程序员做到了技术负责人，稍稍有了一些技术积累，想通过文章的方式和外界沟通、交流。随着写的文章越来越多，慢慢的喜欢上了分享这条道路，于是不断自发的促进我写出更多更好的文章。\r\n\r\n在写文章的过程中发现，很多技术人都在自己的博客上推广自己的公众号，不论博客的访问量多还是少，都会在自己的博客上面贴上公众号二维码。那时候我也稍微有点奇怪，博客写得好好的干嘛要去开公众号呢？这个疑问一直持续了一年多，直到后来我自己也开通了公众号。\r\n\r\n大多数作者分享的目的是为了交流和认同，那么就自然的希望更多的人看到自己的文章，更何况有的文章是花费了好几个凌晨2点的时光而完成的。为了提高文章的传播量，作者们纷纷想起了办法，有的是一篇文章发到各个技术社区，有的是要冒着被群管理员 T 的风险，群发了 N 个技术交流群。\r\n\r\n想想这就是一个很蛋疼的事情，辛辛苦苦写了好几天的文章，免费分享到互联网上去交流还没人看，好不容易有几个阅读量，还是一片骂声，你丫写的什么玩意、你写的太垃圾、你 TM 怎么分享这么 Low 的技术，现在都使用微服务、大数据、人工智能…（一堆最新的技术名词）等等，反正总结一句就是你不行，当然扛精遇到多了也就习惯了。\r\n\r\n上面这些都能忍，但有一些痛点是真不能忍，有一天你精心准备了一篇文章，消耗了 N 个脑细胞，觉得这篇文章应该是你史上写得最好的一篇文章了。因为你之前的文章已经被推荐到了首页（或者加精），感觉还不错，这次信心满满准备在技术社区再斩获阅读量新高，结果你在平台上刚发布不到半小时被管理员给下架了，收到一个短消息：您的文章已经被移除首页…，不用和管理员去沟通，每一个技术社区背后都有一个不知道懂不懂技术的傻X大爷，他们就是这片土地的王。\r\n\r\n有时候你会想此处不留爷自有留爷处，辗转几个技术社区后你会发现基本上大同小异，天下的技术社区管理员也几乎是一个性格，就是你永远都猜不透背后的审核标准，可能主要看气质。于是你自建了博客，但几乎没有一点访问量，虽然有了自由但却少了人气，就到了这样一个境地：在社区感觉收获的粉丝都是平台的，自己做博客却缺乏强大的号召力。\r\n\r\n开通公众号之后才发现微信公众号的乐趣，可以说微信公众号是对作者最友好、最尊重的一个平台（虽然有时候因为某些原因也会删你的文章，它也是为了活命可以理解），会有一种拥有自己用户的感觉。微信公众号的种种机制，会极大的激发你去获取更多的用户和文章阅读量，也是自媒体人最容易变现的一种渠道。微信已经成为国民级的应用，你的目标用户基本上都在微信这个大平台上，如果文章写得足够好，自然会吸引到目标读者的关注。\r\n\r\n微信还有一个非常大的优点，如果用户看到了你的文章，因为文章而关注了你，就会收获一个真正的读者。不像各大技术社区的粉丝关注就是个鸡肋，微信上的读者关注了你，是真的可以天天看到你推送的文章。微信体系的文章传播起来也很容易，读者喜欢的话可以收藏、转发到群或者朋友圈，几乎90%以上的10W+文章都是依靠朋友圈裂变传播，而在 PC 上对于普通人的这种机会可能性几乎为0。\r\n\r\n以上给大家分析了为什么技术人喜欢开技术公众号，这些原因促使了技术人去开通微信公众号写文章，但这只是开始，能让大家持续坚持下去却是因为钱，如果这个世界上有什么东西可以极大调动人们的积极性？从目前来看只有它是最实在的。\r\n\r\n在微信公号上写文章会有三方面的收入:流量主广告、赞赏收入、接外部广告。当你的微信公号读者大于 5000 后，就可以开通自己的流量主，也就是微信文章最下面的那一张卡片广告，这部分收入其实很少，像我现在这个级别每天流量主的收入在 20-40 左右，就是一顿午餐钱；赞赏收入是这三块收入中最少的，几乎可以忽略不计，但赞赏却是鼓舞作者持续写作的最大动力，用钱给予的投票绝对是最真实的认同，不论金额大小；接外部广告才是公号最主要的收入，这个主要看公号的定位和读者质量，有的公号几百块就可以发，有的公号甚至要上万。\r\n\r\n这个世界上没有无缘无故的爱，也没有无缘无故的恨，做公号其实也一样。相信绝大部分技术人和我一样，在最开始分享的时候都只是想分享自己对技术的见解，写博客的一年多没想过会因此而挣钱。后来开通了公号来发布文章，也是希望可以去获得更多读者的认同，而有持续的动力，并没有意识到公号还可以赚点零花钱。\r\n\r\n而开通微信公众号半年之后，就迎来了人生第一个商业广告。那时候甚至都不知道该要多少钱，最后定了一个月推8篇文章，每篇文章后面贴一个广告贴片给1000元。\r\n\r\n这让我了解到原来可以通过写文章赚点零花钱，随着公号阅读量越来越大，遇到的广告商也会越来越多，但不是每一个广告都可以接。可能你已经听过很多公号主说，对于发广告我们已经很克制了，已经拒绝了 X 多广告，很有可能他说的是对的。在后台有各种各样的广告商来找你，有什么卖小说的、卖护肤品的、理财广告等等，说实话如果你愿意几乎可以天天去发广告。\r\n\r\n在面对诱惑时就要看一个人的底线是什么，有的公号坚决只接和技术相关的推广，有的公号是啥都接，有的一周7天三四天都可以去发广告，有的公号每月只接两次推广。我处在于一个中间状态，公号只接技术相关或者对读者有帮助的广告，每周最多只发一篇推广软文，这是目前我能平衡的一种状态，既不清高也不愿太世俗。\r\n\r\n有的读者喜欢走极端，老子关注你是赏识你，公号一条推广都不能忍，对于这种读者我建议你尽早取关，目前技术领域稍微大一点的公众号，几乎没有不接软文推广的。有一天一个广告主给我说过一段话，我觉得还蛮有道理的：广告对于有用的人来说价值千金，刚好帮助读者找到了他想要的东西，对于非目标用户来讲确实是一文不值，有时候你看到生气或许是因为你是非目标用户。\r\n\r\n曾经看到过有的人在技术群里面问，为什么技术公号博主都喜欢发广告呢？我要做一个永远没有广告的技术公众号，请大家一定要关注我。我可以很负责任的告诉大家，这是不可能的，现在不接广告可能是因为接不到广告，或者诱惑的筹码不够多。当公号读者越来越多的时候，面临的商业机会也会越多，总有一天你会向现实妥协，而由此产生的收益也会让你更有动力更持续的去输出更好的内容。毕竟坚持一项东西除了信念，没有什么比钱更有力量的了。而这个世界并不缺信念，但是人却都会为生活所迫。\r\n\r\n有一天一个做公号的博主和我聊天，说他自己坚持写了三年的原创文章，收获了四千多名忠实的读者订阅，现在接到一个推广却不敢发，我问为什么不敢发？他说以前他试着发过一次，结果那些他所谓的忠实读者，在后台把他娘都快骂出来了…，他说他不想丢失每一个读者，我说这哪是你的读者，这是你大爷呀。\r\n\r\n这就是大家喜闻乐见的吗？\r\n\r\n最后做一个小调查，作为公号的读者，你觉得每月几次广告是你可以忍的？\r\n\r\n一次都不能忍\r\n一月二次\r\n一月四次\r\n一月八次\r\n无所谓\r\n可以给我留言。');
INSERT INTO `article` VALUES (1006, 1005, '技术公号和墨菲定律', '是老杨啊', '2018-12-21 17:08:09', '墨菲定律（英语：Murphy’s Law），又译为摩菲定律，具体内容是“凡是可能出错的事就一定会出错”，指的是任何一个事件，只要具有大于零的机率，就可确定它可以发生。\r\n\r\n主要内容：\r\n\r\n一、任何事都没有表面看起来那么简单；\r\n二、所有的事都会比你预计的时间长；\r\n三、会出错的事总会出错；\r\n四、如果你担心某种情况发生，那么它就更有可能发生。\r\n今天无意中看了墨菲定律，突然感觉把它用在编程这个领域也是非常有借鉴意义的：\r\n\r\n一、用户需求永远没有表面看起来那么简单；\r\n二、开发周期总会比你预计的时间长；\r\n三、你写的 bug ，迟早会让后面接手的程序员跳进去；\r\n四、如果你觉得程序可能会出错，一般它总会错；\r\n所以程序员们，出来混迟早要还的，写代码该严谨还是要严谨一些。\r\n\r\n最近技术圈也出现了很多类似的事情，我认识几个做技术公号的朋友，竟然公号也被封了，这个让我感到很意外，要知道公号几乎都是小伙伴投入好多年的心血，这一封瞬间有一种…的感觉。\r\n\r\n\r\n\r\n关键技术公众号一般只聊技术相关的内容，绝大多数运营公号的程序员都是业余时间在搞这个，可以说是别人在遛狗的时候你在写文章，别人在喝咖啡的时候你在写文章，别人在泡妹子的时候你在写文章，别人在刷抖音的时候你在写文章，就程序员一月一次的夫妻生活也慢慢给省了…，此处省略十万字。\r\n\r\n于是乎大家纷纷都搞起了自己的公众号小号，为了防止“墨菲定律”的发生，在这个关键时刻我也必须拿出我的小号来介绍给大家了：Flyever。大家可能觉得这个名字比较奇怪，其实它是有一段故事的，这个公号最早注册于2013年，那时候微信公众号只能发消息还不支持图文，简直是一片荒蛮世界，但是我注册了之后一放就是5年…，这里在省略一万字。\r\n\r\nFlyever 其实是一个户外组织，曾经非常好的三个小伙伴一起成立的，还规划了网站、队旗、Logo，终究岁月嫣然，曾经的小伙伴已经分隔他乡，但是 Flyever 的公号却一直保留了下来，我想我终有一天会写写关于它的故事，关于追求自由和梦想的故事。\r\n\r\n我大概在《六年程序员生涯》中提到过几句，感兴趣的朋友可以看看。为了防止失联，大家可以顺便关注一下我这个小号，我给大家精选了《10本计算机书籍》和《投资理财经典书籍31本》关注后回复：1024 即可领取。');
INSERT INTO `article` VALUES (1007, 1005, '技术人如何搭建自己的技术博客', '是老杨啊', '2018-12-21 17:08:22', '上次有人留言说，技术博客是程序员的标配，但据我所知绝大部分技术同学到现在仍然没有自己的技术博客。原因有很多，有的是懒的写，有的是怕写不好，还有的是一直想憋个大招，幻想做到完美再发出来，结果一直胎死腹中。但其实更多程序员是不知道如何去搭建一个博客，其实如今搭建一个个人技术博客非常简单，其中最简单搭建方式莫属使用 GitHub Pages + Jekyll 了，我的博客就是使用这种技术。\r\n\r\nGitHub Pages\r\nGithub Pages 是面向用户、组织和项目开放的公共静态页面搭建托管服务，站点可以被免费托管在 Github 上，你可以选择使用 Github Pages 默认提供的域名 github.io 或者自定义域名来发布站点。Github Pages 支持 自动利用 Jekyll 生成站点，也同样支持纯 HTML 文档，将你的 Jekyll 站点托管在 Github Pages 上是一个不错的选择。\r\n\r\n使用 Github Pages 搭建博客有以下几个优点：\r\n\r\n完全免费，其中服务器、流量、域名什么的都管，完全零费用搭建一个技术博客\r\n写博客就是提交代码，让写作和编程的体验保持一致\r\n支持绑定自己的域名\r\n提供流行的网页主题模板\r\n缺点也是有的：\r\n\r\n不支持动态内容，博客必须都是静态网页，一般会使用 Jekyll 来构建内容。\r\n博客不能被百度索引，因 Github 和百度有过节，所以 Github 就把百度给屏蔽了。\r\n仓库空间不大于1G\r\n每个月的流量不超过100G\r\n每小时更新不超过 10 次\r\nGithub Pages 使用 Jekyll 来构建内容，那么 Jekyll 是什么呢？\r\n\r\nJekyll 介绍\r\n\r\nJekyll 是一个简单的博客形态的静态站点生产机器。它有一个模版目录，其中包含原始文本格式的文档，通过一个转换器（如 Markdown）和我们的 Liquid 渲染器转化成一个完整的可发布的静态网站，你可以发布在任何你喜爱的服务器上。Jekyll 也可以运行在 GitHub Page 上，也就是说，你可以使用 GitHub 的服务来搭建你的项目页面、博客或者网站，而且是完全免费的。\r\n\r\n但如果我们只是在 GitHub 上面使用的话，到不需要知道 Jekyll 的语法，一般 Github 会自动将我们写的 Markdown 文件转换成静态页面。使用 Jekyll 需要使用 Markdown 语法来写你的文章，不过 Markdown 语法非常简单，做为程序员来讲基本上两三天就掌握了，大家也可以参考这篇文章：markdown 使用总结。\r\n\r\n给大家分享一些 Jekyll 主题，这个网站下有很多 http://jekyllthemes.org/ 主题，大家可以根据自己的爱好去选择博客主题。\r\n\r\n我的个人博客\r\n我的博客经过了三个阶段，第一个阶段，完全依托于使用 GitHub Pages 来构建；第二个阶段，将博客托管于国外的一个服务商；第三个阶段，服务器迁移回到国内、域名备案。之前也写过几篇关于技术博客的文章，如下：\r\n\r\n千里追踪博客之殇\r\n历时25天，我的博客（www.ityouknow.com）终于又活了过来\r\n技术博客那些事儿\r\n使用 Github Pages + Jekyll 构建一个技术博客很简单，基本上步骤就是网上找一个自己喜欢的主题，直接 Fork 到自己的 Github ，然后在删掉原博客中的内容，在上传自己的文章即可，以我自己的博客为例。\r\n\r\n我的博客最初使用的是Yummy-Jekyll，但这个主题已经尽两年多都没有');
INSERT INTO `article` VALUES (1008, 1006, '从疫苗事件看民众的发声之路', '臭弟弟', '2018-12-21 17:08:38', '为什么现在传统主流官方媒体，渐渐变的没有声音，要不就是被各种截图出来的“啪啪啪”打脸的内容。我们再认真想一下，如果我们的官媒要变的有声音需要什么样的条件？第一，需要有很好的素材并且敢于报道；第二，需要有专业报道新闻事件的记者。\r\n\r\n对于第一点，中国快速大发展的这些年，有太多值得我们深挖的一些新闻事件，包括这次的疫苗事件。作为媒体有天然的监管作用，遇到这类的事情，一方面是权威详细的对此事进行报道，但这只是开始，需要持续深挖事件背后的真正原因，才会避免类似的事情再次发生。出了事情虽然会让人们失望，但更让人们寒心的事情是对事件掩盖和不作为。\r\n\r\n曾经看到一篇文章这样写到，绝大数的国人缺乏正确客观看问题的态度，容易受到一些文章的蛊惑，因此舆论监管是国家面对特殊时期的一些手段。说实话，这些话也不是完全没有道理，我上次写的文章还有很多人回复：XXX必将灭亡类似的话。我们要看到问题去解决问题，而不是出现问题的时候就希望国家早点完蛋，国家完蛋了对任何人都没有好处，君不见中东国家人民的经历。但我依然坚决反对严格的言论管制，删X是解决不了任何问题的,而且越是删越能勾起大家的偷窥欲望，其实间接的助推了事件的传播。\r\n\r\n目前我们所有的官媒应该都是受到政府相关机构领导，那么在报道问题的时候就很难具有第三方独立性，地方政府害怕事情闹大影响了自己的政绩，害怕影响了企业的发展从而影响了当地的GDP等等。所以说媒体不能够独立，那么它报道出来的事情就很难有客观性。在此我强烈推荐大家看一部电影《聚焦 Spotlight》，看真正的媒体机构、媒体人应该是什么样的！\r\n\r\n再说第二点，我们需要有专业精神的记者，那么我们看下中国现在还存在多少记者。知乎上友一个问题是：2017 年最令你震惊、悚然的数据是什么？有这么一段回答：\r\n\r\n据统计，2017年中国在册新闻调查记者仅剩175人。传统媒体中的调查记者保有量仅130人——在六年前，这个数字还是306人）——而我们是一个拥有14亿人口的超级大国。\r\n\r\n调查记者怎么定义？通常的认识是：以从事调查性报道为主业的记者。英国媒体理论家HugodeBurgh认为调查记者的责任是挖掘真相。王克勤认为，调查记者必须深入一线，主要从事揭黑报道，且揭露对象为公权机关、强势企业，并做出有公益性的独立调查。\r\n\r\n这个数据够惊悚的吧，中国将近14亿人口，现在还不知道还有没有剩下175个调查记者！！！那这些记者都跑哪去了呢？是没有人愿意当记者了吗？当然在13年之后新媒体的发展对记者行业有很大的冲击，但这是全部的原因吗？\r\n\r\n我们知道深入调查某一事件的新闻报导方式，其经常涉及到犯罪、腐败和其它一些形式的丑闻。在这样的处境中，除正常的生计、责任感、媒体精神外，记者面临着最最重要的是人身安全问题！记者也是人呀，也有家庭和孩子，如果说深度报道了一件新闻事件，结果我被抓了，甚至还被判刑了，那么试问谁会做个？在报道某些集团犯罪等深度问题时，记者所面临的压力是巨大的。所以说如果安全问题解决不了的话，估计是没有人愿意继续做记者了，而且这类问题的发生往往不是一次两次了。\r\n\r\n这些被称为社会‌‌“看门狗‌‌”的调查记者们，都去哪儿了呢？\r\n\r\n1989年，《郑州晚报》记者殷新生，因揭披郑州市检察院越权事件，被诬陷入狱。\r\n1998年，《山西青年报》记者高勤荣，因揭露山西运城渗灌工程造假，被判刑12年。 \r\n2003年，《南方都市报》因报道孙志刚案与非典事件，影响高层仕途，主编程益中被捕。\r\n2005年，《河南商报》记者范友峰，因调查报道聂树斌案，被迫辞职，淡出新闻界。\r\n2008年，《民主与法制时报》记者景剑锋，因报道山西公安包庇黑恶势力，被判刑1年。 \r\n2009年，《河北青年报》副总编辑乐倩，遭遇歹徒报复行凶，歹徒边打边喊‌‌“叫你报！‌‌”\r\n2010年，《经济观察报》记者仇子明，因报道凯恩股份交易内幕，被当地公安局网上通缉。\r\n2012年，《东方早报》记者简光洲，三鹿奶粉首位报道人，发表‌‌“新闻已死‌‌”，离开新闻行业。\r\n2013年，《南岛晚报》记者杨琼文，因曝光海南万宁校长开房案，被迫离职。 \r\n2013年，中国揭黑记者第一人王克勤，因《北京暴雨失踪者》一文，《经济观察报》调查部被解散，王克勤本人被迫离职。 \r\n2016年，《兰州晨报》《兰州晚报》《西部商报》三名驻武威记者，因被当地部门视为发布‌‌“负面报道‌‌”而遭遇逮捕。 \r\n……\r\n\r\n在上面这些名单里，有一个和本次疫苗相关的记者，他就是中国打黑第一人：王克勤。\r\n\r\n2016年3月22日，原《经济日报》深度报导调查记者王克勤，在微博上揭露六年前《中国经济时报》揭露导致一百多山西儿童死亡事件的调查报导《山西疫苗乱象调查》后，遭到山西省、卫生部、新华社三大集团联合攻击打压，而负责签发这个报导的社长总编辑包月阳及副总编辑车海刚起草了强硬的《关于“山西疫苗乱象调查”报导的声明》。\r\n\r\n随后深度调查记者王克勤因山西问题疫苗深度报导失去工作\r\n\r\n北京有知情市民也表示，“当年王克勤先生为此做了九个整版的山西毒疫苗深度报导。结果问题没有得到解决，他先被解决了。中华民族难道是一个受到诅咒的民族？” 让我们记住这个有良知的记者。');
INSERT INTO `article` VALUES (1010, 1005, 'test', '是老杨啊', '2018-12-22 14:10:03', 'test');
INSERT INTO `article` VALUES (1011, 1007, 'test', '一个被封了的账号', '2018-12-25 06:48:16', 'test');
INSERT INTO `article` VALUES (1012, 1006, 'lili', '臭弟弟', '2018-12-27 03:31:21', '啊');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
                               `id` int(11) NOT NULL,
                               `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名',
                               `uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限对应的uri',
                               PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, '发布文章', '/addArticle');
INSERT INTO `permission` VALUES (2, '评论文章', '/addReply');
INSERT INTO `permission` VALUES (3, '编辑自己文章', '/editArticle');
INSERT INTO `permission` VALUES (4, '编辑他人文章', '/editArticle');
INSERT INTO `permission` VALUES (5, '删除自己文章', '/deleteArticle');
INSERT INTO `permission` VALUES (6, '删除他人文章', '/deleteArticle');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`  (
                          `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '主键',
                          `article_id` int(5) NULL DEFAULT NULL COMMENT '外键->表article',
                          `replyer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论人',
                          `date` datetime NULL DEFAULT NULL COMMENT '评论时间',
                          `reply` varchar(800) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
                          PRIMARY KEY (`id`) USING BTREE,
                          INDEX `y`(`article_id`) USING BTREE,
                          INDEX `a`(`replyer`) USING BTREE,
                          CONSTRAINT `a` FOREIGN KEY (`replyer`) REFERENCES `user` (`nickname`) ON DELETE CASCADE ON UPDATE RESTRICT,
                          CONSTRAINT `y` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1020 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES (1001, 1001, '是老杨啊', '2018-12-21 00:21:14', '哈哈哈');
INSERT INTO `reply` VALUES (1002, 1007, '是老杨啊', '2018-12-22 16:11:42', '666');
INSERT INTO `reply` VALUES (1003, 1007, '是老杨啊', '2018-12-22 16:12:11', '说的好');
INSERT INTO `reply` VALUES (1004, 1007, '是老杨啊', '2018-12-22 16:12:41', '哎哟');
INSERT INTO `reply` VALUES (1005, 1007, '臭弟弟', '2018-12-22 16:13:01', '是多久才能深刻的接口啊谁对谁错但是');
INSERT INTO `reply` VALUES (1006, 1007, '是老杨啊', '2018-12-22 16:13:26', '咳咳');
INSERT INTO `reply` VALUES (1007, 1008, '是老杨啊', '2018-12-22 14:10:12', ' test');
INSERT INTO `reply` VALUES (1014, 1010, '是老杨啊', '2018-12-24 09:33:43', '快摸摸');
INSERT INTO `reply` VALUES (1015, 1010, '臭弟弟', '2018-12-25 03:21:31', '阿瑟斯');
INSERT INTO `reply` VALUES (1016, 1011, '丑徒儿', '2018-12-25 07:32:06', '我还是能评论的');
INSERT INTO `reply` VALUES (1017, 1011, 'test', '2018-12-26 02:52:22', 'test到此一游');
INSERT INTO `reply` VALUES (1018, 1007, 'test', '2018-12-26 06:01:16', 'test');
INSERT INTO `reply` VALUES (1019, 1008, '臭弟弟', '2018-12-27 03:30:54', 'a');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
                         `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '主键',
                         `role` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
                         `level` int(5) NULL DEFAULT NULL COMMENT '角色等级超级管理员（3），管理员（2），普通会员（1）',
                         PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', 3);
INSERT INTO `role` VALUES (2, '啊', 2);
INSERT INTO `role` VALUES (3, '普通用户', 1);
INSERT INTO `role` VALUES (6, '普通会员', 1);
INSERT INTO `role` VALUES (18, '请输入角色名', 2);
INSERT INTO `role` VALUES (19, '老杨 的测试', 2);
INSERT INTO `role` VALUES (20, '请输入角色名', 2);
INSERT INTO `role` VALUES (21, 'lili', 1);

-- ----------------------------
-- Table structure for role_per
-- ----------------------------
DROP TABLE IF EXISTS `role_per`;
CREATE TABLE `role_per`  (
                             `roleid` int(11) NULL DEFAULT NULL,
                             `perid` int(11) NOT NULL AUTO_INCREMENT,
                             INDEX `permid`(`perid`) USING BTREE,
                             INDEX `roleid`(`roleid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_per
-- ----------------------------
INSERT INTO `role_per` VALUES (3, 1);
INSERT INTO `role_per` VALUES (6, 1);
INSERT INTO `role_per` VALUES (6, 2);
INSERT INTO `role_per` VALUES (6, 3);
INSERT INTO `role_per` VALUES (6, 5);
INSERT INTO `role_per` VALUES (1, 1);
INSERT INTO `role_per` VALUES (1, 2);
INSERT INTO `role_per` VALUES (1, 3);
INSERT INTO `role_per` VALUES (1, 4);
INSERT INTO `role_per` VALUES (1, 5);
INSERT INTO `role_per` VALUES (1, 6);
INSERT INTO `role_per` VALUES (18, 1);
INSERT INTO `role_per` VALUES (18, 2);
INSERT INTO `role_per` VALUES (18, 3);
INSERT INTO `role_per` VALUES (18, 5);
INSERT INTO `role_per` VALUES (19, 1);
INSERT INTO `role_per` VALUES (19, 2);
INSERT INTO `role_per` VALUES (19, 3);
INSERT INTO `role_per` VALUES (20, 1);
INSERT INTO `role_per` VALUES (20, 2);
INSERT INTO `role_per` VALUES (20, 3);
INSERT INTO `role_per` VALUES (3, 2);
INSERT INTO `role_per` VALUES (3, 3);
INSERT INTO `role_per` VALUES (3, 5);
INSERT INTO `role_per` VALUES (2, 1);
INSERT INTO `role_per` VALUES (2, 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
                         `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '主键',
                         `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
                         `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
                         `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
                         PRIMARY KEY (`id`) USING BTREE,
                         INDEX `nickname`(`nickname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1013 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1005, '是老杨啊', '13260906172', '98f6bcd4621d373cade4e832627b4f6');
INSERT INTO `user` VALUES (1006, '臭弟弟', '17856690931', '98f6bcd4621d373cade4e832627b4f6');
INSERT INTO `user` VALUES (1007, '一个被封了的账号', '13260906666', '98f6bcd4621d373cade4e832627b4f6');
INSERT INTO `user` VALUES (1008, '丑徒儿', '13260907777', '98f6bcd4621d373cade4e832627b4f6');
INSERT INTO `user` VALUES (1012, 'test', '13260906171', '98f6bcd4621d373cade4e832627b4f6');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
                              `userid` int(5) NOT NULL,
                              `roleid` int(5) NULL DEFAULT NULL,
                              PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1005, 1);
INSERT INTO `user_role` VALUES (1006, 2);
INSERT INTO `user_role` VALUES (1007, 3);
INSERT INTO `user_role` VALUES (1008, 3);
INSERT INTO `user_role` VALUES (1012, 6);

SET FOREIGN_KEY_CHECKS = 1;
