package basic;

import java.util.Collection;

import org.directwebremoting.Browser;
import org.directwebremoting.ScriptBuffer;
import org.directwebremoting.ScriptSession;

public class MessagePush {
	public void send(final String content) {
		Browser.withAllSessions(new Runnable() {
			private ScriptBuffer script = new ScriptBuffer();
			public void run() {
				// 设置要调用的 js及参数
				script.appendCall("show", content);
				// 得到所有ScriptSession
				Collection<ScriptSession> sessions = DWRScriptSessionListener.getScriptSessions();
				// 遍历每一个ScriptSession
				for (ScriptSession scriptSession : sessions) {
					scriptSession.addScript(script);
				}
			}
		});
	}
}
