#include <stdlib.h>
signed int v1 (signed short);
signed int (*v2) (signed short) = v1;
void v3 (unsigned int);
void (*v4) (unsigned int) = v3;
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
extern unsigned int v7 (unsigned int, signed int, signed short, signed char);
extern unsigned int (*v8) (unsigned int, signed int, signed short, signed char);
extern unsigned char v9 (signed short, unsigned short);
extern unsigned char (*v10) (signed short, unsigned short);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern signed short v19 (unsigned char, signed char);
extern signed short (*v20) (unsigned char, signed char);
static unsigned short v21 (signed int);
static unsigned short (*v22) (signed int) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
static signed short v25 (unsigned short);
static signed short (*v26) (unsigned short) = v25;
signed short v27 (signed short, unsigned short, signed int, signed int);
signed short (*v28) (signed short, unsigned short, signed int, signed int) = v27;
signed int v29 (signed int, unsigned short);
signed int (*v30) (signed int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v52 = 1;
signed short v51 = -2;
signed char v50 = -4;

signed int v29 (signed int v53, unsigned short v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned char v57 = 6;
unsigned char v56 = 7;
signed short v55 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v27 (signed short v58, unsigned short v59, signed int v60, signed int v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed int v64 = -2;
signed int v63 = -3;
unsigned char v62 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v25 (unsigned short v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
unsigned int v68 = 5U;
unsigned char v67 = 3;
unsigned short v66 = 1;
trace++;
switch (trace)
{
case 3: 
return -1;
default: abort ();
}
}
}
}

static unsigned short v21 (signed int v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
unsigned short v72 = 2;
unsigned int v71 = 3U;
signed char v70 = -2;
trace++;
switch (trace)
{
case 7: 
{
signed int v73;
unsigned short v74;
v73 = v69 + v69;
v74 = v21 (v73);
history[history_index++] = (int)v74;
}
break;
case 8: 
return 4;
case 9: 
{
signed int v75;
unsigned short v76;
v75 = v69 - -4;
v76 = v21 (v75);
history[history_index++] = (int)v76;
}
break;
case 10: 
{
signed int v77;
unsigned short v78;
v77 = v69 - v69;
v78 = v21 (v77);
history[history_index++] = (int)v78;
}
break;
case 11: 
return v72;
case 12: 
return v72;
case 13: 
return 1;
default: abort ();
}
}
}
}

void v3 (unsigned int v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 0U;
unsigned char v81 = 0;
unsigned char v80 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed short v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
unsigned short v86 = 4;
unsigned short v85 = 3;
unsigned int v84 = 0U;
trace++;
switch (trace)
{
case 0: 
{
signed short v87;
unsigned short v88;
unsigned char v89;
v87 = v83 - v83;
v88 = v85 - v85;
v89 = v9 (v87, v88);
history[history_index++] = (int)v89;
}
break;
case 2: 
{
unsigned short v90;
signed short v91;
v90 = v85 + v85;
v91 = v25 (v90);
history[history_index++] = (int)v91;
}
break;
case 4: 
{
signed short v92;
unsigned short v93;
unsigned char v94;
v92 = 2 - v83;
v93 = 6 - v86;
v94 = v9 (v92, v93);
history[history_index++] = (int)v94;
}
break;
case 6: 
{
signed int v95;
unsigned short v96;
v95 = -4 - -4;
v96 = v21 (v95);
history[history_index++] = (int)v96;
}
break;
case 14: 
return -1;
default: abort ();
}
}
}
}
