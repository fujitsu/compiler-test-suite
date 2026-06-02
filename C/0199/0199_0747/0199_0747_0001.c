#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned char, unsigned short);
extern signed short (*v2) (unsigned char, unsigned char, unsigned short);
extern unsigned int v3 (signed int, signed char);
extern unsigned int (*v4) (signed int, signed char);
extern signed short v5 (unsigned int, unsigned short, signed short, signed int);
extern signed short (*v6) (unsigned int, unsigned short, signed short, signed int);
signed char v9 (signed char, unsigned char, unsigned char);
signed char (*v10) (signed char, unsigned char, unsigned char) = v9;
extern signed int v11 (unsigned int, signed short);
extern signed int (*v12) (unsigned int, signed short);
static unsigned int v15 (signed short, signed char, unsigned int);
static unsigned int (*v16) (signed short, signed char, unsigned int) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed char v19 (unsigned char, signed int, signed int);
extern signed char (*v20) (unsigned char, signed int, signed int);
extern void v21 (signed char);
extern void (*v22) (signed char);
extern unsigned char v23 (signed int, unsigned short);
extern unsigned char (*v24) (signed int, unsigned short);
extern signed int v25 (unsigned short, unsigned short, unsigned char);
extern signed int (*v26) (unsigned short, unsigned short, unsigned char);
extern signed char v27 (signed short, signed char);
extern signed char (*v28) (signed short, signed char);
extern signed int v29 (signed short, signed char);
extern signed int (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v68 = -3;
unsigned char v67 = 7;
unsigned char v66 = 1;

static unsigned int v15 (signed short v69, signed char v70, unsigned int v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = 0;
signed int v73 = -1;
signed short v72 = 1;
trace++;
switch (trace)
{
case 9: 
return v71;
default: abort ();
}
}
}
}

signed char v9 (signed char v75, unsigned char v76, unsigned char v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 3;
signed char v79 = -2;
signed short v78 = -2;
trace++;
switch (trace)
{
case 5: 
{
signed short v81;
signed char v82;
signed int v83;
v81 = v78 - v78;
v82 = v75 + v79;
v83 = v29 (v81, v82);
history[history_index++] = (int)v83;
}
break;
case 8: 
{
signed short v84;
signed char v85;
unsigned int v86;
unsigned int v87;
v84 = v78 + 2;
v85 = v75 - -2;
v86 = 1U + 3U;
v87 = v15 (v84, v85, v86);
history[history_index++] = (int)v87;
}
break;
case 10: 
return v75;
case 13: 
return 0;
default: abort ();
}
}
}
}
