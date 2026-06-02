#include <stdlib.h>
signed int v1 (unsigned int, signed char);
signed int (*v2) (unsigned int, signed char) = v1;
extern signed char v3 (signed int, signed short);
extern signed char (*v4) (signed int, signed short);
extern signed short v5 (signed short, signed char, unsigned char);
extern signed short (*v6) (signed short, signed char, unsigned char);
signed int v7 (unsigned short, signed char, signed char);
signed int (*v8) (unsigned short, signed char, signed char) = v7;
static signed short v9 (signed int, unsigned int);
static signed short (*v10) (signed int, unsigned int) = v9;
extern unsigned char v11 (signed char, signed char);
extern unsigned char (*v12) (signed char, signed char);
extern unsigned short v13 (signed int, signed char, unsigned int);
extern unsigned short (*v14) (signed int, signed char, unsigned int);
extern unsigned char v15 (signed char, signed int);
extern unsigned char (*v16) (signed char, signed int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern void v19 (unsigned char, signed short);
extern void (*v20) (unsigned char, signed short);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern void v23 (signed char, signed char);
extern void (*v24) (signed char, signed char);
extern unsigned char v25 (signed short, unsigned char, unsigned int, unsigned int);
extern unsigned char (*v26) (signed short, unsigned char, unsigned int, unsigned int);
signed int v27 (signed char, unsigned char);
signed int (*v28) (signed char, unsigned char) = v27;
extern void v29 (signed int);
extern void (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v47 = -3;
unsigned int v46 = 0U;
signed short v45 = -4;

signed int v27 (signed char v48, unsigned char v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = -1;
unsigned int v51 = 0U;
unsigned int v50 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v9 (signed int v53, unsigned int v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned int v57 = 3U;
unsigned short v56 = 6;
unsigned int v55 = 0U;
trace++;
switch (trace)
{
case 1: 
{
signed char v58;
signed char v59;
v58 = -1 - -3;
v59 = -3 + 1;
v23 (v58, v59);
}
break;
case 3: 
{
signed char v60;
signed char v61;
v60 = 3 + 0;
v61 = 1 - -4;
v23 (v60, v61);
}
break;
case 5: 
return 0;
default: abort ();
}
}
}
}

signed int v7 (unsigned short v62, signed char v63, signed char v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed char v67 = -1;
signed short v66 = 2;
signed int v65 = -4;
trace++;
switch (trace)
{
case 10: 
{
signed int v68;
signed char v69;
unsigned int v70;
unsigned short v71;
v68 = 0 - v65;
v69 = 0 + v67;
v70 = 5U + 7U;
v71 = v13 (v68, v69, v70);
history[history_index++] = (int)v71;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

signed int v1 (unsigned int v72, signed char v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = 3;
unsigned int v75 = 5U;
unsigned char v74 = 5;
trace++;
switch (trace)
{
case 0: 
{
signed int v77;
unsigned int v78;
signed short v79;
v77 = v76 + v76;
v78 = 2U - 3U;
v79 = v9 (v77, v78);
history[history_index++] = (int)v79;
}
break;
case 6: 
{
signed short v80;
signed char v81;
unsigned char v82;
signed short v83;
v80 = 3 - -4;
v81 = 0 - v73;
v82 = 5 - v74;
v83 = v5 (v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}
