
<div id="rlheader" class="am-topbar am-topbar-inverse" style="margin: 0;" data-am-sticky="{animation: 'slide-top'}" >
<div class="am-g am-g-fixed">
  <h1 class="am-topbar-brand">
    <a href="#">���԰�</a>
  </h1>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse">
    <ul class="am-nav am-nav-pills am-topbar-nav">
      <li ><a href="../../index.asp">��ҳ</a></li>
    </ul>


    <div class="am-topbar-right">

    <%if Session("username")="" Then%>
    <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm"  data-am-modal="{target: '#reg'}">ע��</button>
       <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm" data-am-modal="{target: '#login'}">��¼������</button>
       <a href="../view/admin.asp"><button class="am-btn am-btn-primary am-topbar-btn am-btn-sm" >����</button></a>
       <%else %>
      <a href="#msg"><button class="am-btn am-btn-primary am-topbar-btn am-btn-sm" data-am-modal="{target: '#addmsg'}">�������</button></a>
	             <a href="../../controller/frontend/logout.asp"><button class="am-btn am-btn-primary am-topbar-btn am-btn-sm">�˳�</button></a>

       <%end if%>
    </div>
  </div>
  </div>
</div>