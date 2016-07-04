package hex.service.stateless.http;
import haxe.Constraints.Function;

/**
 * @author azoldesi
 */
interface IHTTPRequestFactory 
{
	function createRequest(url: String, ?onData: String -> Void, ?onError: String -> Void, ?onStatus: Int -> Void): IHTTPRequest;
}