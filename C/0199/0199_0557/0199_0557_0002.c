#include <stdlib.h>
extern void v3 (void);
extern void (*v4) (void);
extern unsigned char v5 (signed char, unsigned char);
extern unsigned char (*v6) (signed char, unsigned char);
unsigned int v7 (unsigned int, unsigned char, unsigned short, unsigned short);
unsigned int (*v8) (unsigned int, unsigned char, unsigned short, unsigned short) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern void v15 (signed int, unsigned int);
extern void (*v16) (signed int, unsigned int);
extern void v17 (signed int);
extern void (*v18) (signed int);
extern void v19 (signed short, signed int, signed char);
extern void (*v20) (signed short, signed int, signed char);
void v21 (unsigned char, unsigned short, unsigned char);
void (*v22) (unsigned char, unsigned short, unsigned char) = v21;
extern signed short v23 (unsigned char, signed char, signed char, signed short);
extern signed short (*v24) (unsigned char, signed char, signed char, signed short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern void v27 (unsigned int, signed short, unsigned char, signed char);
extern void (*v28) (unsigned int, signed short, unsigned char, signed char);
extern unsigned short v29 (unsigned short, unsigned int, signed char, unsigned int);
extern unsigned short (*v30) (unsigned short, unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v95 = 0U;
signed char v94 = -3;
unsigned int v93 = 2U;

void v21 (unsigned char v96, unsigned short v97, unsigned char v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 4;
signed int v100 = -3;
unsigned int v99 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned int v102, unsigned char v103, unsigned short v104, unsigned short v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 3U;
unsigned short v107 = 6;
unsigned short v106 = 5;
trace++;
switch (trace)
{
case 7: 
{
v3 ();
}
break;
case 9: 
{
v3 ();
}
break;
case 11: 
return v102;
default: abort ();
}
}
}
}
