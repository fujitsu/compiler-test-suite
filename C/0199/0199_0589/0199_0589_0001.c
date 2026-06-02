#include <stdlib.h>
signed int v1 (unsigned short, signed short);
signed int (*v2) (unsigned short, signed short) = v1;
extern unsigned short v3 (unsigned char, signed char);
extern unsigned short (*v4) (unsigned char, signed char);
extern signed short v5 (unsigned int, signed int, signed int);
extern signed short (*v6) (unsigned int, signed int, signed int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (unsigned short, signed char);
extern void (*v10) (unsigned short, signed char);
extern unsigned short v11 (signed short, unsigned short);
extern unsigned short (*v12) (signed short, unsigned short);
signed int v13 (unsigned int, unsigned int, unsigned int, signed char);
signed int (*v14) (unsigned int, unsigned int, unsigned int, signed char) = v13;
extern unsigned char v15 (signed int, signed short);
extern unsigned char (*v16) (signed int, signed short);
extern void v17 (signed short, signed int, unsigned char, unsigned short);
extern void (*v18) (signed short, signed int, unsigned char, unsigned short);
extern signed char v19 (unsigned char, unsigned short);
extern signed char (*v20) (unsigned char, unsigned short);
extern unsigned char v21 (signed short, signed short, signed short, unsigned int);
extern unsigned char (*v22) (signed short, signed short, signed short, unsigned int);
extern unsigned int v23 (unsigned short, unsigned short, unsigned short, signed char);
extern unsigned int (*v24) (unsigned short, unsigned short, unsigned short, signed char);
static unsigned char v25 (signed short, signed int, unsigned int, unsigned int);
static unsigned char (*v26) (signed short, signed int, unsigned int, unsigned int) = v25;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v51 = 2U;
unsigned char v50 = 5;
unsigned char v49 = 2;

static unsigned char v25 (signed short v52, signed int v53, unsigned int v54, unsigned int v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = 2;
signed char v57 = 0;
signed char v56 = 0;
trace++;
switch (trace)
{
case 1: 
return 6;
default: abort ();
}
}
}
}

signed int v13 (unsigned int v59, unsigned int v60, unsigned int v61, signed char v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = 0;
unsigned short v64 = 4;
unsigned int v63 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned short v66, signed short v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed short v70 = -4;
signed int v69 = 3;
signed int v68 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed short v71;
signed int v72;
unsigned int v73;
unsigned int v74;
unsigned char v75;
v71 = v70 + 3;
v72 = v69 + 2;
v73 = 4U + 2U;
v74 = 1U - 7U;
v75 = v25 (v71, v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 2: 
{
signed int v76;
signed short v77;
unsigned char v78;
v76 = v68 - v68;
v77 = v70 + v70;
v78 = v15 (v76, v77);
history[history_index++] = (int)v78;
}
break;
case 16: 
return v68;
default: abort ();
}
}
}
}
