#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned short);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (signed short, signed int);
extern unsigned int (*v6) (signed short, signed int);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (void);
extern void (*v10) (void);
extern signed int v11 (signed char, unsigned char, unsigned char);
extern signed int (*v12) (signed char, unsigned char, unsigned char);
extern unsigned int v13 (unsigned char, signed short, unsigned int);
extern unsigned int (*v14) (unsigned char, signed short, unsigned int);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
signed int v17 (signed short, unsigned char, signed char);
signed int (*v18) (signed short, unsigned char, signed char) = v17;
extern signed short v19 (signed short, unsigned char);
extern signed short (*v20) (signed short, unsigned char);
extern signed char v23 (unsigned int, unsigned char);
extern signed char (*v24) (unsigned int, unsigned char);
extern signed char v25 (signed int, unsigned int);
extern signed char (*v26) (signed int, unsigned int);
extern signed char v27 (signed short, signed char, unsigned char);
extern signed char (*v28) (signed short, signed char, unsigned char);
signed short v29 (unsigned int, unsigned short);
signed short (*v30) (unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v70 = -1;
signed int v69 = -2;
signed int v68 = 2;

signed short v29 (unsigned int v71, unsigned short v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed char v75 = 3;
signed char v74 = 3;
unsigned char v73 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed short v76, unsigned char v77, signed char v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed char v81 = -2;
unsigned short v80 = 7;
signed int v79 = -3;
trace++;
switch (trace)
{
case 9: 
{
signed short v82;
unsigned char v83;
signed short v84;
v82 = -2 + 2;
v83 = v77 - 4;
v84 = v19 (v82, v83);
history[history_index++] = (int)v84;
}
break;
case 11: 
return v79;
default: abort ();
}
}
}
}
