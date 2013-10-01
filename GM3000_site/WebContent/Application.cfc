<cfcomponent>

	<cffunction name="onApplicationStart" returnType="boolean">
		<cfscript>
			application.LOG = "gm3000";
			application.DSN = "gm3000";
			return true;
		</cfscript>
	</cffunction>

	<cffunction name="onRequestStart" returnType="boolean">
		<cfparam name="url.p" default="home">
		<cfreturn true />
	</cffunction>

	<cffunction name="onRequestEnd" returnType="boolean">
		<!--- DEBUG --->
		<cfif StructKeyExists(form, "debug") OR StructKeyExists(url, "debug") >
			<cfdump var="#form#" expand="false" label="form" />
			<cfdump var="#url#" expand="false" label="url" />
			<cfdump var="#variables#" expand="false" label="variables" />
			<cfdump var="#CGI#" expand="false" label="CGI" />
			<cfdump var="#application#" expand="false" label="application" />
		</cfif>
		<cfreturn true />
	</cffunction>

</cfcomponent>