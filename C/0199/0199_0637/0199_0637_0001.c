#include <stdlib.h>
extern void v1 (unsigned char, signed char, unsigned char);
extern void (*v2) (unsigned char, signed char, unsigned char);
signed char v3 (unsigned int);
signed char (*v4) (unsigned int) = v3;
extern unsigned int v5 (signed char, unsigned char, unsigned short, unsigned char);
extern unsigned int (*v6) (signed char, unsigned char, unsigned short, unsigned char);
extern signed short v7 (unsigned char, signed int);
extern signed short (*v8) (unsigned char, signed int);
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
extern unsigned int v11 (unsigned char, unsigned short, signed char, signed int);
extern unsigned int (*v12) (unsigned char, unsigned short, signed char, signed int);
extern unsigned short v13 (signed char, unsigned char, unsigned char, signed short);
extern unsigned short (*v14) (signed char, unsigned char, unsigned char, signed short);
extern unsigned short v17 (unsigned short, unsigned char, unsigned short);
extern unsigned short (*v18) (unsigned short, unsigned char, unsigned short);
extern unsigned char v19 (signed short, unsigned int, unsigned int);
extern unsigned char (*v20) (signed short, unsigned int, unsigned int);
unsigned short v21 (unsigned char, signed int);
unsigned short (*v22) (unsigned char, signed int) = v21;
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern signed char v29 (signed short, unsigned int);
extern signed char (*v30) (signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v47 = 1;
unsigned short v46 = 5;
signed int v45 = 2;

unsigned short v21 (unsigned char v48, signed int v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = -2;
signed char v51 = 0;
unsigned int v50 = 6U;
trace++;
switch (trace)
{
case 5: 
{
v27 ();
}
break;
case 7: 
{
unsigned char v53;
unsigned short v54;
signed char v55;
signed int v56;
unsigned int v57;
v53 = 5 - 1;
v54 = 7 + 3;
v55 = v51 - v51;
v56 = -2 + -3;
v57 = v11 (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

signed char v3 (unsigned int v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
signed char v61 = 2;
unsigned char v60 = 6;
signed char v59 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
