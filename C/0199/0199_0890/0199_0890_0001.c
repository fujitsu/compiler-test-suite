#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned int, signed int);
extern unsigned char (*v2) (signed int, unsigned int, signed int);
extern unsigned short v3 (signed char, signed short, signed char, signed char);
extern unsigned short (*v4) (signed char, signed short, signed char, signed char);
signed short v5 (void);
signed short (*v6) (void) = v5;
extern unsigned short v7 (signed short, unsigned short);
extern unsigned short (*v8) (signed short, unsigned short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern signed short v13 (signed int);
extern signed short (*v14) (signed int);
static unsigned int v15 (unsigned char, signed short, signed char);
static unsigned int (*v16) (unsigned char, signed short, signed char) = v15;
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern void v19 (unsigned char, signed char);
extern void (*v20) (unsigned char, signed char);
extern unsigned int v21 (signed char, unsigned char, signed int, signed short);
extern unsigned int (*v22) (signed char, unsigned char, signed int, signed short);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
signed short v25 (void);
signed short (*v26) (void) = v25;
unsigned char v27 (unsigned short, signed char);
unsigned char (*v28) (unsigned short, signed char) = v27;
static signed short v29 (unsigned char, signed char);
static signed short (*v30) (unsigned char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v53 = 1;
unsigned int v52 = 3U;
unsigned int v51 = 2U;

static signed short v29 (unsigned char v54, signed char v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = -1;
signed char v57 = 1;
signed char v56 = -1;
trace++;
switch (trace)
{
case 7: 
return -1;
default: abort ();
}
}
}
}

unsigned char v27 (unsigned short v59, signed char v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 0;
unsigned int v62 = 0U;
unsigned char v61 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (void)
{
{
for (;;) {
unsigned short v66 = 1;
signed short v65 = 0;
unsigned int v64 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v15 (unsigned char v67, signed short v68, signed char v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned int v72 = 1U;
unsigned char v71 = 5;
signed char v70 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed char v73;
unsigned char v74;
signed int v75;
signed short v76;
unsigned int v77;
v73 = -2 + v70;
v74 = v71 - v71;
v75 = -1 + -1;
v76 = -3 + v68;
v77 = v21 (v73, v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 6: 
{
unsigned char v78;
signed char v79;
signed short v80;
v78 = v67 + v67;
v79 = v69 + 2;
v80 = v29 (v78, v79);
history[history_index++] = (int)v80;
}
break;
case 8: 
{
signed char v81;
unsigned char v82;
signed int v83;
signed short v84;
unsigned int v85;
v81 = v69 + v70;
v82 = v71 - 0;
v83 = 3 + -1;
v84 = v68 + v68;
v85 = v21 (v81, v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 10: 
return 6U;
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
signed short v88 = 0;
signed char v87 = -4;
unsigned int v86 = 0U;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v89;
signed short v90;
signed char v91;
unsigned int v92;
v89 = 2 + 0;
v90 = -3 - -2;
v91 = v87 + 3;
v92 = v15 (v89, v90, v91);
history[history_index++] = (int)v92;
}
break;
case 11: 
return -3;
default: abort ();
}
}
}
}
