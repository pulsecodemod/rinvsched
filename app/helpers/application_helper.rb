module ApplicationHelper
  def mtr_tag(mtr)
    if (mtr["odd"] < 0 )
      vodd = 0
    else
      vodd = mtr["odd"]
    end
    zindex = mtr["mcount"] + 1
    %&<img id="&  + mtr["ttip"] + %&" title="& + mtr["ttip"] + %&" class="drag" onmouseover = "StatwinMtr(& \
    + %&'#{mtr["ttip"]}', '#{mtr["vnd"]}', #{mtr["q0"]}, #{mtr["dq"]}, #{mtr["q1"]}, #{mtr["odd"]}, #{mtr["odd"]})" style= "position:absolute; TOP:2px;& \
    +  %& LEFT:#{ 40 +(vodd * 16)}px; z-index:#{ zindex };& \
    + %&" src="/assets/& + mtr["ttype"] +%&.png"></img>&
  end
  def mtr_tag1(mtr)
   "<div>mtr:" + %&#{mtr["ttip"]}, #{mtr["vnd"]}, #{mtr["q0"]}, #{mtr["dq"]}, #{mtr["q1"]}, #{mtr["mdt"]}, #{mtr["odd"]}& +  "</div>"
  end
  def assydiv_tag(pno)
    %&<div id="assy-part-#{pno}" class="assembly-parts">#{pno} is an assembly part.</div>&
  end
  def in_window(mtr)
    if ( mtr["pcount"] < 200 )
      return true
    else
      return false
    end
  end
end
