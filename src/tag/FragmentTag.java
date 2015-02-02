package tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class FragmentTag extends SimpleTagSupport {
	private JspFragment fragment;

	public JspFragment getFragment() {
		return fragment;
	}

	public void setFragment(JspFragment fragment) {
		this.fragment = fragment;
	}

	@Override
	public void doTag() throws JspException, IOException {
		JspWriter out = getJspContext().getOut();
		out.println("<div style='padding:10px;border:1px solid black'>");
		out.println("<h3>�����Ƕ�̬�����JSPƬ��</h3>");
		fragment.invoke(null);
		out.println("</div>");
	}
}
