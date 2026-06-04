#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed int);
extern unsigned short (*v2) (unsigned short, signed int);
signed int v3 (unsigned short, unsigned short, signed int, unsigned char);
signed int (*v4) (unsigned short, unsigned short, signed int, unsigned char) = v3;
extern signed int v5 (unsigned short, unsigned char, unsigned char, signed char);
extern signed int (*v6) (unsigned short, unsigned char, unsigned char, signed char);
extern signed short v7 (unsigned char, unsigned short, signed int, signed char);
extern signed short (*v8) (unsigned char, unsigned short, signed int, signed char);
extern unsigned char v9 (signed short, unsigned int, signed char, signed char);
extern unsigned char (*v10) (signed short, unsigned int, signed char, signed char);
void v11 (unsigned char, signed short, unsigned short, signed int);
void (*v12) (unsigned char, signed short, unsigned short, signed int) = v11;
signed int v13 (unsigned short, signed short, signed short, unsigned char);
signed int (*v14) (unsigned short, signed short, signed short, unsigned char) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
static signed char v17 (unsigned short, unsigned short, signed int);
static signed char (*v18) (unsigned short, unsigned short, signed int) = v17;
extern unsigned short v19 (signed short, signed short);
extern unsigned short (*v20) (signed short, signed short);
signed int v21 (unsigned char, unsigned short, signed int, signed char);
signed int (*v22) (unsigned char, unsigned short, signed int, signed char) = v21;
extern unsigned int v23 (unsigned char);
extern unsigned int (*v24) (unsigned char);
extern signed short v25 (signed short);
extern signed short (*v26) (signed short);
extern void v27 (signed int, unsigned short);
extern void (*v28) (signed int, unsigned short);
extern signed int v29 (unsigned int, unsigned int);
extern signed int (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v41 = -2;
signed short v40 = -3;
signed int v39 = 2;

signed int v21 (unsigned char v42, unsigned short v43, signed int v44, signed char v45)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = 1;
signed char v47 = -2;
signed short v46 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v17 (unsigned short v49, unsigned short v50, signed int v51)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed short v54 = 3;
signed char v53 = -4;
unsigned int v52 = 3U;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v55;
unsigned int v56;
signed int v57;
v55 = 3U + v52;
v56 = v52 - 2U;
v57 = v29 (v55, v56);
history[history_index++] = (int)v57;
}
break;
case 8: 
{
unsigned short v58;
signed int v59;
unsigned short v60;
v58 = 4 - 7;
v59 = v51 - -4;
v60 = v1 (v58, v59);
history[history_index++] = (int)v60;
}
break;
case 14: 
return v53;
default: abort ();
}
}
}
}

signed int v13 (unsigned short v61, signed short v62, signed short v63, unsigned char v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 1;
signed short v66 = -1;
signed int v65 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned char v68, signed short v69, unsigned short v70, signed int v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = -4;
signed short v73 = -3;
signed int v72 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned short v75, unsigned short v76, signed int v77, unsigned char v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = -3;
signed char v80 = 0;
signed int v79 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed short v82;
signed short v83;
v82 = v81 - -2;
v83 = v25 (v82);
history[history_index++] = (int)v83;
}
break;
case 3: 
{
unsigned short v84;
unsigned short v85;
signed int v86;
signed char v87;
v84 = v76 + v75;
v85 = 1 - v75;
v86 = 0 + v79;
v87 = v17 (v84, v85, v86);
history[history_index++] = (int)v87;
}
break;
case 10: 
{
signed short v88;
signed short v89;
v88 = 3 - v81;
v89 = v25 (v88);
history[history_index++] = (int)v89;
}
break;
case 12: 
return -2;
case 15: 
return v77;
default: abort ();
}
}
}
}
