/**
 * Coded by aimozg on 27.08.2017.
 */
package coc.xlogic {
public class ExecContext {
	public function ExecContext(_thiz:*) {
		this._thiz = _thiz;
	}
	private var _thiz:* = {};
	public function get thiz():* {
		return _thiz;
	}
	public function set thiz(value:*):void {
		_thiz = value;
	}
	public function execute(stmt:Statement):void {
		stmt.execute(this);
	}
	public function executeAll(stmts:/*Statement*/Array):void {
		for each (var statement:Statement in stmts) {
			execute(statement);
		}
	}
	public function error(where:Statement,message:String):void {
		throw new Error("In "+where+": "+message);
	}
}
}
