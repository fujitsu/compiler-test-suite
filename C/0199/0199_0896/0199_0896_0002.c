#include <stdlib.h>
void v1 (unsigned int, unsigned short, unsigned int);
void (*v2) (unsigned int, unsigned short, unsigned int) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed short v5 (signed short, unsigned char, signed int, unsigned int);
extern signed short (*v6) (signed short, unsigned char, signed int, unsigned int);
extern signed short v7 (signed int, unsigned short);
extern signed short (*v8) (signed int, unsigned short);
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
extern unsigned short v11 (unsigned char, signed char, unsigned int);
extern unsigned short (*v12) (unsigned char, signed char, unsigned int);
extern signed char v13 (signed char, signed char, signed int);
extern signed char (*v14) (signed char, signed char, signed int);
extern signed short v15 (unsigned char, signed int);
extern signed short (*v16) (unsigned char, signed int);
extern unsigned int v17 (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned int (*v18) (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed short v21 (unsigned short, unsigned short);
extern signed short (*v22) (unsigned short, unsigned short);
extern unsigned int v23 (unsigned short, unsigned int, signed char, unsigned short);
extern unsigned int (*v24) (unsigned short, unsigned int, signed char, unsigned short);
extern void v25 (unsigned char, signed short, unsigned int);
extern void (*v26) (unsigned char, signed short, unsigned int);
void v27 (signed short);
void (*v28) (signed short) = v27;
extern unsigned char v29 (unsigned short, unsigned int, signed int);
extern unsigned char (*v30) (unsigned short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v92 = 7U;
signed short v91 = -2;
unsigned int v90 = 2U;

void v27 (signed short v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
signed char v96 = -2;
unsigned short v95 = 5;
signed int v94 = 3;
trace++;
switch (trace)
{
case 7: 
return;
default: abort ();
}
}
}
}

void v1 (unsigned int v97, unsigned short v98, unsigned int v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed short v102 = 2;
unsigned int v101 = 5U;
unsigned char v100 = 5;
trace++;
switch (trace)
{
case 0: 
{
signed char v103;
v103 = v3 ();
history[history_index++] = (int)v103;
}
break;
case 2: 
{
unsigned char v104;
signed short v105;
unsigned int v106;
v104 = v100 + 5;
v105 = v102 + 3;
v106 = v97 - 4U;
v25 (v104, v105, v106);
}
break;
case 4: 
{
signed char v107;
signed char v108;
signed int v109;
signed char v110;
v107 = -2 - -2;
v108 = 0 - -2;
v109 = -4 - -3;
v110 = v13 (v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}
