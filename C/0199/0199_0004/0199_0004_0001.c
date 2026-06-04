#include <stdlib.h>
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
unsigned char v5 (signed short);
unsigned char (*v6) (signed short) = v5;
extern void v7 (unsigned int, unsigned char, signed int, unsigned short);
extern void (*v8) (unsigned int, unsigned char, signed int, unsigned short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (unsigned int, unsigned char, signed short);
extern signed short (*v16) (unsigned int, unsigned char, signed short);
extern signed int v17 (signed short, signed char);
extern signed int (*v18) (signed short, signed char);
extern void v19 (unsigned short, unsigned short, signed short, unsigned int);
extern void (*v20) (unsigned short, unsigned short, signed short, unsigned int);
signed int v21 (unsigned int, signed int, unsigned int);
signed int (*v22) (unsigned int, signed int, unsigned int) = v21;
extern signed int v23 (signed char, signed char, signed char, unsigned int);
extern signed int (*v24) (signed char, signed char, signed char, unsigned int);
extern signed short v25 (signed int, signed short, unsigned int, unsigned char);
extern signed short (*v26) (signed int, signed short, unsigned int, unsigned char);
extern void v27 (unsigned char, signed int, unsigned short, signed int);
extern void (*v28) (unsigned char, signed int, unsigned short, signed int);
extern unsigned short v29 (unsigned int, unsigned char, signed short, unsigned char);
extern unsigned short (*v30) (unsigned int, unsigned char, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v91 = 0;
unsigned short v90 = 5;
unsigned short v89 = 0;

signed int v21 (unsigned int v92, signed int v93, unsigned int v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = 1;
unsigned int v96 = 5U;
unsigned char v95 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed short v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 0;
unsigned int v100 = 4U;
signed short v99 = -1;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v102;
unsigned char v103;
signed int v104;
unsigned short v105;
v102 = v100 - v100;
v103 = v101 - v101;
v104 = -3 - 1;
v105 = 6 - 3;
v7 (v102, v103, v104, v105);
}
break;
case 9: 
{
signed char v106;
v106 = v9 ();
history[history_index++] = (int)v106;
}
break;
case 13: 
return v101;
default: abort ();
}
}
}
}
