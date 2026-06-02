#include <stdlib.h>
unsigned char v1 (unsigned char, signed short, signed short);
unsigned char (*v2) (unsigned char, signed short, signed short) = v1;
extern signed char v3 (unsigned int, signed int, signed int);
extern signed char (*v4) (unsigned int, signed int, signed int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (unsigned short, signed short);
extern signed short (*v8) (unsigned short, signed short);
extern unsigned int v9 (signed char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char);
extern void v11 (signed char, signed short, signed int);
extern void (*v12) (signed char, signed short, signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned short v15 (signed char, unsigned char, signed int, unsigned short);
extern unsigned short (*v16) (signed char, unsigned char, signed int, unsigned short);
extern signed char v17 (unsigned short, signed char, signed int);
extern signed char (*v18) (unsigned short, signed char, signed int);
unsigned short v19 (unsigned char, signed char, unsigned char);
unsigned short (*v20) (unsigned char, signed char, unsigned char) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
signed char v23 (void);
signed char (*v24) (void) = v23;
unsigned int v25 (unsigned short, signed short, signed short, signed char);
unsigned int (*v26) (unsigned short, signed short, signed short, signed char) = v25;
extern unsigned short v27 (signed short, signed int, signed char, signed int);
extern unsigned short (*v28) (signed short, signed int, signed char, signed int);
extern signed int v29 (signed char, unsigned short, unsigned short, signed short);
extern signed int (*v30) (signed char, unsigned short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v51 = 0U;
signed short v50 = 1;
signed short v49 = -2;

unsigned int v25 (unsigned short v52, signed short v53, signed short v54, signed char v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 1;
unsigned short v57 = 5;
signed short v56 = 1;
trace++;
switch (trace)
{
case 3: 
return 1U;
default: abort ();
}
}
}
}

signed char v23 (void)
{
{
for (;;) {
unsigned char v61 = 1;
unsigned int v60 = 3U;
signed short v59 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (unsigned char v62, signed char v63, unsigned char v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 2;
unsigned char v66 = 0;
unsigned char v65 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v68, signed short v69, signed short v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed char v73 = 2;
signed int v72 = -2;
unsigned short v71 = 6;
trace++;
switch (trace)
{
case 0: 
{
signed int v74;
v74 = v13 ();
history[history_index++] = (int)v74;
}
break;
case 6: 
{
signed char v75;
unsigned char v76;
signed int v77;
unsigned short v78;
unsigned short v79;
v75 = v73 - 1;
v76 = 6 + 0;
v77 = 2 + -3;
v78 = 3 - v71;
v79 = v15 (v75, v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 8: 
{
signed char v80;
unsigned short v81;
unsigned short v82;
signed short v83;
signed int v84;
v80 = -4 + v73;
v81 = 5 - v71;
v82 = v71 - 5;
v83 = v70 - v69;
v84 = v29 (v80, v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 10: 
{
unsigned char v85;
v85 = v21 ();
history[history_index++] = (int)v85;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
