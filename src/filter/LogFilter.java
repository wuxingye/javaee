package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class LogFilter implements Filter {

	private FilterConfig config;

	@Override
	public void destroy() {
		this.config = null;
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		ServletContext context = this.config.getServletContext();
		System.out.println(context.getContextPath());
		long before = System.currentTimeMillis();
		System.out.println("开始过滤。。。。。。");
		HttpServletRequest hrequest = (HttpServletRequest) request;
		System.out.println("Filter已经截获到用户的请求地址：" + hrequest.getServletPath());
		
		chain.doFilter(request, response);
		long after = System.currentTimeMillis();
		System.out.println("过滤结束");
		System.out.println("请求被定位到" + hrequest.getRequestURI() + "  所花时间为："
				+ (after - before));

	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		this.config = config;
	}

}
