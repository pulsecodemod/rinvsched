module ApplicationHelper
  def mtr_tag(mtr)
    %&<img id="&  + mtr["ttip"] + %&" title="& + mtr["ttip"] + %&" class="drag" style= "absolute; TOP:& \
    +  "#{114 + (mtr["mcount"] * 8)}px LEFT:" + "#{200 + (mtr["odd"] * 8)}px" \
    + %&" src="/assets/& + mtr["ttype"] +%&.png"></img>&
  end
end
