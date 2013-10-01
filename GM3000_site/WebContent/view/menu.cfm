<cfset sListePages = "news,bio,music,photos,videos,concerts,links,contact" />
<ul>
	<cfoutput>
		<cfloop list="#sListePages#" index="variables.p">
			<li <cfif variables.p eq url.p>class="active"</cfif>>
				<a href="?p=#variables.p#">
					#UCase(variables.p)#
				</a>
			</li>
		</cfloop>
	</cfoutput>
</ul>