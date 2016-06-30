package basic;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.directwebremoting.ScriptSession;
import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;
import org.directwebremoting.event.ScriptSessionEvent;
import org.directwebremoting.event.ScriptSessionListener;

public class DWRScriptSessionListener implements ScriptSessionListener {
	public static final Map<String, ScriptSession> scriptSessionMap = new HashMap<String, ScriptSession>();

	@Override
	public void sessionCreated(ScriptSessionEvent event) {
		WebContext webContext = WebContextFactory.get();
		HttpSession session = webContext.getSession();
		ScriptSession scriptSession = event.getSession();
		scriptSessionMap.put(session.getId(), scriptSession);
		System.out.println("session: " + session.getId() + " scriptSession: "
				+ scriptSession.getId() + "is created!");
	}

	@Override
	public void sessionDestroyed(ScriptSessionEvent event) {
		WebContext webContext = WebContextFactory.get();
		HttpSession session = webContext.getSession();
		ScriptSession scriptSession = scriptSessionMap.remove(session.getId());
		System.out.println("session: " + session.getId() + " scriptSession: "
				+ scriptSession.getId() + "is destroyed!");
	}
	
	public static Collection<ScriptSession> getScriptSessions() {
		return scriptSessionMap.values();
	}
}
