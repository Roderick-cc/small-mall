-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 10 月 19 日 07:51
-- 服务器版本: 5.0.90
-- PHP 版本: 5.2.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `cms`
--

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL auto_increment,
  `content` text character set utf8 NOT NULL,
  `create_time` bigint(20) NOT NULL,
  `modify_time` bigint(20) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `content`, `create_time`, `modify_time`, `topic_id`, `user_id`) VALUES
(1, '回复内容', 0, 0, 4, 24),
(2, '回复内容', 0, 0, 4, 26),
(3, '回复内容', 1535512210441, 1535512210441, 4, 26),
(4, '回复内容', 1539677355662, 1539677355662, 0, 29),
(5, '回复内容', 1539677434267, 1539677434267, 0, 29),
(18, 'bbbbbbb', 1539757805913, 1539757805913, 0, 40),
(19, 'dddddddddddddddddddd', 1539758361400, 1539758361407, 17, 40),
(20, 'aaaaaaaaaaaaa', 1539758407404, 1539758407404, 19, 30),
(21, 'dasdsa', 1539845530521, 1539845530522, 19, 40),
(12, '回复内容sss', 1539681781822, 1539681781822, 19, 29),
(22, '测试', 1539848441757, 1539848441757, 6, 40),
(25, '评论一下', 1539932689786, 1539932689786, 24, 42),
(26, '评论一下', 1539932875375, 1539932875375, 6, 42),
(27, 's', 1539934246440, 1539934246440, 24, 42);

-- --------------------------------------------------------

--
-- 表的结构 `topice`
--

CREATE TABLE IF NOT EXISTS `topice` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) character set utf8 NOT NULL,
  `content` text character set utf8 NOT NULL,
  `use_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `topice`
--

INSERT INTO `topice` (`id`, `title`, `content`, `use_id`, `create_time`, `modify_time`) VALUES
(6, '管理系统的登录控制？手写一个发布订阅模型！', '内容', 24, '2018-08-28 00:00:00', '2018-08-28 00:00:00'),
(7, 'Netty堆外内存泄露排查与总结', '内容', 24, '2018-08-28 11:16:51', '2018-08-28 11:16:51'),
(10, '测试', '这里这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试在测试', 24, '2018-08-28 05:48:17', '2018-08-28 05:48:17'),
(12, '测试2', '这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试这里在测试', 24, '2018-08-29 11:01:29', '2018-08-29 11:01:29'),
(24, '老生常谈：Promise 用法与源码分析', 'Promise本身是一个异步编程的方案，让处理过程变得更简单。es6引入promise特性来处理JavaScript中的异步场景。以前，处理异步最常用的方法就是回调函数，但是当过程稍微复杂一点，多个异步操作集中在一起的时候，就容易出现一个回调金字塔的情况，可读性和可维护性都非常差\n', 42, '2018-10-19 02:42:12', '2018-10-19 02:42:12'),
(22, '腾讯发布前端组件框架 Omi，全面拥抱 Web Components', '特性\n\n4KB 的代码尺寸，比小更小\n顺势而为，顺从浏览器的发展和 API 设计\nWebcomponents + JSX 相互融合为一个框架 Omi\nWebcomponents 也可以数据驱动视图, UI = fn(data)\nJSX 是开发体验最棒(智能提示)、语法噪音最少的 UI 表达式\n独创的 Path Updating 机制，基于 Proxy 全自动化的精准更新，功耗低，自由度高，性能卓越，方便集成 requestIdleCallback\n使用 store 系统不需要调用 this.udpate，它会自动化按需更新局部视图\n看看Facebook React 和 Web Components对比优势，Omi 融合了各自的优点，而且给开发者自由的选择喜爱的方式\nShadow DOM 与 Virtual DOM 融合，Omi 既使用了虚拟 DOM，也是使用真实 Shadow DOM，让视图更新更准确更迅速\n类似 WeStore 体系，99.9% 的项目不需要什么时间旅行,也不仅仅 redux 能时间旅行,请不要上来就 redux，Omi store 体系可以满足所有项目\n局部 CSS 最佳解决方案(Shadow DOM)，社区为局部 CSS 折腾了不少框架和库(使用js或json写样式，如:Radium，jsxstyle，react-style；与webpack绑定使用生成独特的className文件名—类名—hash值，如：CSS Modules，Vue)，都是 hack 技术；Shadow DOM Style 是最完美的方案\n\n', 42, '2018-10-19 02:18:22', '2018-10-19 02:18:22'),
(25, 'Vue在页面右上角实现可悬浮/隐藏的系统菜单', '里暂时只涉及系统菜单这一个功能，因此路由暂未涉及。\n基本思路是：通过props将showCancel这个Boolean值传递到子组件，对父子组件分别绑定事件，来控制这个系统菜单的显示状态。其中在父组件的绑定click事件中，将传入子组件的showCancel值重置。\n这里就涉及第一个小知识点——子组件调用：\n首先写好等待被子组件渲染的自定义元素：', 43, '2018-10-19 02:49:30', '2018-10-19 02:49:30'),
(26, '常见的Javascript获取时间戳', '其实近七天就是六天前的0点到今天的24点，举个栗子，今天是8月7日，那么要获取近七天的数据，应该是8月1日00:00:00到8月7日24:00:00，8月7日24:00:00的时间戳在上面已经讲过了，就不再赘述啦，那么8月1日00:00:00呢？', 43, '2018-10-19 02:50:46', '2018-10-19 02:50:46'),
(27, '前端状态管理与有限状态机', '当下前端流行的框架，都是用状态来描述界面(state => view),可以说前端开发实际上就是在维护各种状态(state)，这已经成为目前前端开发的共识。\nView = ViewModel(Model);\n复制代码理想情况下，ViewModel 是纯函数，给定相同的 Model，产出相同的 View。\nstate => view 很好理解，但如何在 view 中合理地修改 state 也是一个问题。\n', 43, '2018-10-19 02:55:24', '2018-10-19 02:55:24');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) character set utf8 NOT NULL,
  `passwords` varchar(50) character set utf8 NOT NULL,
  `email` varchar(50) character set utf8 NOT NULL,
  `avatar` varchar(50) character set utf8 default NULL,
  `gender` bit(1) default NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  `nickname` varchar(50) character set utf8 NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `passwords`, `email`, `avatar`, `gender`, `create_time`, `modify_time`, `nickname`) VALUES
(20, '阿达', '14e1b600b1fd579f47433b88e8d85291', 'luoshidenetgmail.com', 'default-avatar.png', '\0', '2018-08-27 00:00:00', '2018-08-27 00:00:00', '掌声'),
(23, 'undefined', 'd1d16c28c7674cfc5e269dbe1209f552', 'luo@gmail.com', 'default-avatar.png', '\0', '2018-08-28 00:00:00', '2018-08-28 00:00:00', 'undefined'),
(24, 'undefined', '28c8edde3d61a0411511d3b1866f0636', 'luo@gmail.com', 'default-avatar.png', '\0', '2018-08-28 00:00:00', '2018-08-28 00:00:00', 'undefined'),
(25, 'undefined', '28c8edde3d61a0411511d3b1866f0636', 'luo@gmail.com', 'default-avatar.png', '\0', '2018-08-28 00:00:00', '2018-08-28 00:00:00', 'undefined'),
(21, '阿达', '14e1b600b1fd579f47433b88e8d85291', 'luoshidenetgmail.com', 'default-avatar.png', '\0', '2018-08-27 00:00:00', '2018-08-27 00:00:00', '掌声'),
(44, 'undefined', '8add17102ed680d0c84b756c9ea173dc', 'dobinspark@163.com', 'default-avatar.png', '\0', '2018-10-19 03:24:27', '2018-10-19 03:24:27', 'admins'),
(43, 'undefined', '8add17102ed680d0c84b756c9ea173dc', 'luoshidenet@gmail.com', 'default-avatar.png', '\0', '2018-10-19 02:47:49', '2018-10-19 02:47:49', 'shides'),
(39, 'undefined', '8add17102ed680d0c84b756c9ea173dc', '1@163.com', 'default-avatar.png', '\0', '2018-10-13 05:52:40', '2018-10-13 05:52:40', 'admin'),
(40, 'undefined', '8add17102ed680d0c84b756c9ea173dc', '5@163.com', 'default-avatar.png', '\0', '2018-10-16 02:13:06', '2018-10-16 02:13:06', 'hahaha'),
(41, 'undefined', '8add17102ed680d0c84b756c9ea173dc', '6@163.com', 'default-avatar.png', '\0', '2018-10-18 10:54:28', '2018-10-18 10:54:28', 'adminss'),
(42, 'undefined', '8add17102ed680d0c84b756c9ea173dc', '1002133015@qq.com', 'default-avatar.png', '\0', '2018-10-19 02:17:12', '2018-10-19 02:17:12', 'shide');
