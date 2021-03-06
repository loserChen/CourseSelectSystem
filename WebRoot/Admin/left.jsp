<%@ page contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
    <html>
<head>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

  <meta name="author" content="心梦缘ocean ocl" />

  <title>My tree demo</title>

  <style type="text/css">

      /*主页面样式*/

      .leftNav {

        width: 100%;

        height:500px;

        border:#B9E0F7 1px solid;

        margin-left: 1%;

        margin-right: 1%;

    }

      #footer {

      color:#808080;

      line-height: 1.6em;

      padding: 0 0 1em 0;

    }

    /*我的树样式表*/

    .treeDiv {

      color: #636363;

      font-size: 14px;

      font-weight: normal;

      background-color: #fff;

      color: black;

      overflow: auto;

      padding: 0 0 1em 0;

      overflow-x: hidden;

    }

    

    .treeNode {

      white-space: nowrap;

      text-indent: -14px;

      margin: 6px 2px 5px 14px;

    }

    

    a.treeUnselected:hover, a.treeSelected:hover {

      background-color: #BFD9ED;

      text-decoration: none;

    }

    

    a.treeUnselected, a.treeSelected {

      color: black;

      padding: 1px 3px 1px 0;

      text-decoration: none;

    }

    a.treeSelected {

      background-color: #B9E0F7;

    }

    a.treeUnselected {

      background-color: transparent;

    }

    

    .treeSubnodes {

      display: block;

    }

    .treeSubnodesHidden {

      display: none;

    }

    .treeNode img.treeNoLinkImage, .treeNode img.treeLinkImage {

      height: 15px;

      margin-left: 5px;

      margin-right: 0px;

      width: 15px;

    }

    .treeNode img.treeLinkImage {

      cursor: pointer;

    }

    

    div.treeNode a, div.treeNode span.apiRoot {

      display: inline-block;

      margin-left: 24px;

      text-indent: 0;

      white-space: normal;

      width: 95%;

      word-wrap: break-word;

    }

    

    div.treeNode span.category {

      cursor: pointer;

    }

  </style>

</head>

<body>

<div class="leftNav">

    <div id="samplesToc">

        <div id="tree" style="top: 35px; left: 0px;" class="treeDiv">

          <div id="treeRoot" onselectstart="return false" ondragstart="return false">

            

                  

               

            <!--end block-->

            <div class="treeNode">

              <img src="../graphics/treenodeplus.gif" onclick="expandCollapse(this.parentNode)" class="treeLinkImage">

              <span onclick="expandCollapse(this.parentNode)" class="category">学生管理</span>

              <div class="treeSubnodesHidden">

                <div class="treeNode">

                  <a href="studentManage/addStudent.jsp" class="treeUnselected" onclick="clickAnchor(this)" target="main">添加学生</a>

                </div>

                <div class="treeNode">

                  <a href="/CourseSelectSystem/LookDeleteStudentServlet" class="treeUnselected" onclick="clickAnchor(this)" target="main">删除学生</a>

                </div>

                <div class="treeNode">

                  <a href="/CourseSelectSystem/LookStudentServlet" class="treeUnselected" onclick="clickAnchor(this)" target="main">学生信息查询</a>

                </div>

                <div class="treeNode">

                  <a href="#" class="treeUnselected" onclick="clickAnchor(this)">叶子结点四</a>

                </div>

                <div class="treeNode">

                  <a href="#" class="treeUnselected" onclick="clickAnchor(this)">叶子结点五</a>

                </div>

              </div>

            </div>

            <!--end block-->
            <div class="treeNode">

              <img src="../graphics/treenodeplus.gif" onclick="expandCollapse(this.parentNode)" class="treeLinkImage">

              <span onclick="expandCollapse(this.parentNode)" class="category">教师管理</span>

              <div class="treeSubnodesHidden">

                <div class="treeNode">

                  <a href="teacherManage/addTeacher.jsp" class="treeUnselected" onclick="clickAnchor(this)" target="main">添加教师</a>

                </div>

                <div class="treeNode">

                  <a href="/CourseSelectSystem/LookDeleteTeacherServlet" class="treeUnselected" onclick="clickAnchor(this)" target="main">删除教师</a>

                </div>

                <div class="treeNode">

                  <a href="/CourseSelectSystem/LookTeacherServlet" class="treeUnselected" onclick="clickAnchor(this)"target="main">教师信息查询</a>

                </div>

                <div class="treeNode">

                  <a href="#" class="treeUnselected" onclick="clickAnchor(this)">叶子结点四</a>

                </div>

                <div class="treeNode">

                  <a href="#" class="treeUnselected" onclick="clickAnchor(this)">叶子结点五</a>

                </div>

              </div>

            </div>

          </div>

        </div>

    </div> <!-- end samplesToc -->

</div> <!-- end leftNav -->

<div class="right content">


</div><!-- end main  content-->

<div id="footer" align="center">

          

</div><!-- end footer-->

<script type="text/javascript">

var treeSelected = null;//选中的树节点

var imgPlus = new Image();

imgPlus.src="../graphics/treenodeplus.gif";

var imgMinus = new Image();

imgMinus.src="../graphics/treenodeminus.gif";

//父节点展开事件

function expandCollapse(el)

{

    //如果父节点有字节点（class 属性为treeSubnodesHidden），展开所有子节点

    if (el.className!= "treeNode"){

        return;    //判断父节点是否为一个树节点，如果树节点不能展开，请检查是否节点的class属性是否为treeNode

    }    

    var child;

    var imgEl;//图片子节点，在树展开时更换图片

    for(var i=0; i < el.childNodes.length; i++)

    {

        child = el.childNodes[i];

        if (child.src)

        {

            imgEl = child;

        }

        else if (child.className == "treeSubnodesHidden")

        {

            child.className = "treeSubnodes";//原来若隐藏，则展开

            imgEl.src = imgMinus.src;//更换图片

            break;

        }

        else if (child.className == "treeSubnodes")

        {

            child.className = "treeSubnodesHidden";//原来若展开，则隐藏

            imgEl.src = imgPlus.src;//更换图片

            break;

        }

    }

}


//子节点点击事件，设置选中节点的样式

function clickAnchor(el)

{

    selectNode(el.parentNode);

    el.blur();

}


function selectNode(el)

{

    if (treeSelected != null)

    {

        setSubNodeClass(treeSelected, 'A', 'treeUnselected');

    }

    setSubNodeClass(el, 'A', 'treeSelected');

    treeSelected = el;

}


function setSubNodeClass(el, nodeName, className)

{

    var child;

    for (var i=0; i < el.childNodes.length; i++)

    {

        child = el.childNodes[i];

        if (child.nodeName == nodeName)

        {

            child.className = className;

            break;

        }

    }

}

</script>

</body>

</html>
    