/*...................................................................................................
Author: Diego Inácio
Shader: iridescence 01
Version: 1.0.0
Dev.: OpenGL Shading Language
Date Upadated: JAN/09/2014
www.diegoinacio.com
.....................................................................................................
Vertex part of a simple iridescent shader using OpenGL Shading Language.

If you have any comment, sent it to me at: diegodci@gmail.com
Thank you! :D
.....................................................................................................
References:

ROST et al. OpenGL Shading Language, 3rd edition.

BAILEY; CUNNINGHAM. Graphics Shaders: Theory and Practice, 2nd Edition.

EBERT et al. Texturing and Modeling: A Procedural Approach, 3rd edition.
.....................................................................................................
Resources:

<OpenGL>
http://www.opengl.org/
...................................................................................................*/

varying vec3 P;
varying float fr;

void main(){
	P = gl_Vertex;											//vertex position vector
	vec3 N = gl_NormalMatrix * gl_Normal;					//vertex normal vector
	vec3 V = gl_ModelViewMatrix * gl_Vertex;				//eye to vertex vector
	vec3 E = normalize(-V);									//normalized vertex to eye vector
	fr = dot(N, E);											//facing ratio
	gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
}