#include <stdlib.h>
extern signed short v1 (signed short);
extern signed short (*v2) (signed short);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern void v5 (signed char);
extern void (*v6) (signed char);
unsigned int v7 (unsigned char);
unsigned int (*v8) (unsigned char) = v7;
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern unsigned char v11 (unsigned int, signed char);
extern unsigned char (*v12) (unsigned int, signed char);
extern unsigned char v13 (unsigned int);
extern unsigned char (*v14) (unsigned int);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern void v17 (signed int, unsigned char);
extern void (*v18) (signed int, unsigned char);
extern signed int v19 (unsigned short, signed char, unsigned short);
extern signed int (*v20) (unsigned short, signed char, unsigned short);
extern void v23 (unsigned char, signed short, unsigned int);
extern void (*v24) (unsigned char, signed short, unsigned int);
extern signed int v25 (signed short, unsigned char, unsigned short);
extern signed int (*v26) (signed short, unsigned char, unsigned short);
unsigned short v27 (signed short, signed int, signed int, signed int);
unsigned short (*v28) (signed short, signed int, signed int, signed int) = v27;
void v29 (unsigned int, signed char, unsigned int);
void (*v30) (unsigned int, signed char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v87 = 7;
unsigned char v86 = 5;
signed int v85 = 1;

void v29 (unsigned int v88, signed char v89, unsigned int v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = -2;
signed char v92 = 3;
signed short v91 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v27 (signed short v94, signed int v95, signed int v96, signed int v97)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed int v100 = 0;
signed short v99 = 0;
unsigned short v98 = 1;
trace++;
switch (trace)
{
case 4: 
return 4;
case 6: 
return 1;
case 10: 
return v98;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 7;
signed char v103 = -1;
signed char v102 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
