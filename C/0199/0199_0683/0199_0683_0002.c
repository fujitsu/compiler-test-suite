#include <stdlib.h>
signed char v3 (unsigned short, signed short, unsigned char);
signed char (*v4) (unsigned short, signed short, unsigned char) = v3;
extern unsigned char v5 (signed char, signed int, unsigned int);
extern unsigned char (*v6) (signed char, signed int, unsigned int);
signed int v7 (unsigned int, unsigned short);
signed int (*v8) (unsigned int, unsigned short) = v7;
extern signed char v9 (signed char);
extern signed char (*v10) (signed char);
signed short v11 (signed short);
signed short (*v12) (signed short) = v11;
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
extern signed int v15 (signed char, signed int, signed int, signed char);
extern signed int (*v16) (signed char, signed int, signed int, signed char);
extern void v17 (unsigned char, signed int);
extern void (*v18) (unsigned char, signed int);
extern void v19 (unsigned short, signed int);
extern void (*v20) (unsigned short, signed int);
extern signed short v21 (unsigned char, unsigned short, unsigned short);
extern signed short (*v22) (unsigned char, unsigned short, unsigned short);
extern unsigned short v23 (unsigned short);
extern unsigned short (*v24) (unsigned short);
static unsigned short v25 (signed short, unsigned int);
static unsigned short (*v26) (signed short, unsigned int) = v25;
signed int v27 (void);
signed int (*v28) (void) = v27;
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v72 = 2;
unsigned char v71 = 5;
signed int v70 = -4;

signed int v27 (void)
{
{
for (;;) {
signed int v75 = -4;
signed int v74 = 3;
signed char v73 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v25 (signed short v76, unsigned int v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed int v80 = 2;
unsigned char v79 = 1;
unsigned int v78 = 3U;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v81;
unsigned char v82;
v81 = v77 + v78;
v82 = v29 (v81);
history[history_index++] = (int)v82;
}
break;
case 4: 
return 7;
case 6: 
{
signed short v83;
unsigned int v84;
unsigned short v85;
v83 = -2 + v76;
v84 = 2U - v78;
v85 = v25 (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 7: 
{
unsigned int v86;
unsigned char v87;
v86 = 0U - 3U;
v87 = v29 (v86);
history[history_index++] = (int)v87;
}
break;
case 9: 
{
unsigned int v88;
unsigned char v89;
v88 = 7U - v77;
v89 = v29 (v88);
history[history_index++] = (int)v89;
}
break;
case 11: 
return 6;
case 12: 
return 3;
default: abort ();
}
}
}
}

signed short v11 (signed short v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = 0;
unsigned char v92 = 5;
unsigned short v91 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned int v94, unsigned short v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed char v98 = 3;
signed char v97 = -4;
signed int v96 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned short v99, signed short v100, unsigned char v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed char v104 = -1;
unsigned short v103 = 5;
unsigned char v102 = 4;
trace++;
switch (trace)
{
case 1: 
{
signed short v105;
unsigned int v106;
unsigned short v107;
v105 = 3 + 2;
v106 = 3U + 3U;
v107 = v25 (v105, v106);
history[history_index++] = (int)v107;
}
break;
case 5: 
{
signed short v108;
unsigned int v109;
unsigned short v110;
v108 = v100 - v100;
v109 = 4U - 4U;
v110 = v25 (v108, v109);
history[history_index++] = (int)v110;
}
break;
case 13: 
return v104;
default: abort ();
}
}
}
}
