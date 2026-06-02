#include <stdlib.h>
unsigned int v1 (unsigned int, signed short, signed int);
unsigned int (*v2) (unsigned int, signed short, signed int) = v1;
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
unsigned int v7 (signed int, unsigned int);
unsigned int (*v8) (signed int, unsigned int) = v7;
static signed short v9 (unsigned int, signed char);
static signed short (*v10) (unsigned int, signed char) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned int v13 (unsigned int, unsigned int, signed int, signed char);
extern unsigned int (*v14) (unsigned int, unsigned int, signed int, signed char);
extern void v15 (signed int, unsigned char);
extern void (*v16) (signed int, unsigned char);
extern signed short v17 (signed short, unsigned int, signed int, signed int);
extern signed short (*v18) (signed short, unsigned int, signed int, signed int);
static signed short v19 (signed short, unsigned short, signed char);
static signed short (*v20) (signed short, unsigned short, signed char) = v19;
extern unsigned char v21 (signed int, signed char);
extern unsigned char (*v22) (signed int, signed char);
extern void v23 (signed char, signed char, signed int);
extern void (*v24) (signed char, signed char, signed int);
extern unsigned short v25 (unsigned int);
extern unsigned short (*v26) (unsigned int);
extern signed int v27 (unsigned short, unsigned int, signed char, signed char);
extern signed int (*v28) (unsigned short, unsigned int, signed char, signed char);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v52 = -1;
unsigned int v51 = 4U;
signed int v50 = 3;

static signed short v19 (signed short v53, unsigned short v54, signed char v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = 1;
unsigned short v57 = 3;
unsigned char v56 = 4;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v59;
v59 = v29 ();
history[history_index++] = (int)v59;
}
break;
case 5: 
{
unsigned int v60;
v60 = v29 ();
history[history_index++] = (int)v60;
}
break;
case 7: 
return v53;
default: abort ();
}
}
}
}

static signed short v9 (unsigned int v61, signed char v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 7;
unsigned int v64 = 0U;
unsigned short v63 = 4;
trace++;
switch (trace)
{
case 11: 
return -4;
default: abort ();
}
}
}
}

unsigned int v7 (signed int v66, unsigned int v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned int v70 = 1U;
unsigned int v69 = 0U;
unsigned int v68 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned int v71, signed short v72, signed int v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed short v76 = -1;
unsigned int v75 = 3U;
signed int v74 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v77;
unsigned int v78;
signed int v79;
signed int v80;
signed short v81;
v77 = v76 - v76;
v78 = v71 + v71;
v79 = v74 + v74;
v80 = v73 - v74;
v81 = v17 (v77, v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 2: 
{
signed short v82;
unsigned short v83;
signed char v84;
signed short v85;
v82 = v72 - v76;
v83 = 2 + 4;
v84 = -4 + 0;
v85 = v19 (v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 8: 
{
signed int v86;
v86 = v11 ();
history[history_index++] = (int)v86;
}
break;
case 10: 
{
unsigned int v87;
signed char v88;
signed short v89;
v87 = 6U - v75;
v88 = 2 - 1;
v89 = v9 (v87, v88);
history[history_index++] = (int)v89;
}
break;
case 12: 
return v71;
default: abort ();
}
}
}
}
