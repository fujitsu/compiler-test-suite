#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern unsigned int v5 (signed short, unsigned int);
extern unsigned int (*v6) (signed short, unsigned int);
extern signed int v7 (signed short);
extern signed int (*v8) (signed short);
extern unsigned char v9 (signed int, signed char);
extern unsigned char (*v10) (signed int, signed char);
signed int v11 (unsigned char, unsigned char, unsigned char);
signed int (*v12) (unsigned char, unsigned char, unsigned char) = v11;
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern unsigned int v15 (signed short, signed char);
extern unsigned int (*v16) (signed short, signed char);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern unsigned int v19 (signed char, unsigned int, signed short);
extern unsigned int (*v20) (signed char, unsigned int, signed short);
extern void v21 (signed int);
extern void (*v22) (signed int);
extern unsigned char v23 (signed char, unsigned short, signed int, signed short);
extern unsigned char (*v24) (signed char, unsigned short, signed int, signed short);
extern unsigned short v25 (signed int, unsigned short, signed short, unsigned int);
extern unsigned short (*v26) (signed int, unsigned short, signed short, unsigned int);
extern unsigned char v27 (signed char, signed int, signed int);
extern unsigned char (*v28) (signed char, signed int, signed int);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v64 = 0;
signed int v63 = 0;
signed short v62 = 0;

signed int v29 (void)
{
{
for (;;) {
unsigned short v67 = 1;
unsigned char v66 = 3;
signed short v65 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned char v68, unsigned char v69, unsigned char v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = -1;
unsigned short v72 = 5;
signed int v71 = -3;
trace++;
switch (trace)
{
case 5: 
{
signed int v74;
v74 = v1 ();
history[history_index++] = (int)v74;
}
break;
case 7: 
{
signed int v75;
v75 = v71 - v71;
v21 (v75);
}
break;
case 9: 
{
signed int v76;
v76 = v71 + 1;
v21 (v76);
}
break;
case 11: 
return v73;
default: abort ();
}
}
}
}
