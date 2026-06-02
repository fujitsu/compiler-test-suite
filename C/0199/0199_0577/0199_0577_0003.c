#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern unsigned char v5 (unsigned short, signed short);
extern unsigned char (*v6) (unsigned short, signed short);
extern void v9 (void);
extern void (*v10) (void);
extern void v11 (unsigned char, unsigned int, unsigned char, unsigned char);
extern void (*v12) (unsigned char, unsigned int, unsigned char, unsigned char);
extern signed char v13 (signed char, unsigned short, signed int);
extern signed char (*v14) (signed char, unsigned short, signed int);
extern unsigned short v15 (unsigned short, unsigned char);
extern unsigned short (*v16) (unsigned short, unsigned char);
signed int v17 (void);
signed int (*v18) (void) = v17;
void v19 (signed char);
void (*v20) (signed char) = v19;
extern unsigned int v21 (signed int, unsigned short);
extern unsigned int (*v22) (signed int, unsigned short);
extern unsigned int v23 (unsigned short, signed char);
extern unsigned int (*v24) (unsigned short, signed char);
extern signed int v25 (signed char, unsigned int, signed char, signed short);
extern signed int (*v26) (signed char, unsigned int, signed char, signed short);
unsigned char v27 (unsigned int, signed char);
unsigned char (*v28) (unsigned int, signed char) = v27;
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v92 = -2;
signed short v91 = 1;
signed int v90 = 0;

unsigned char v27 (unsigned int v93, signed char v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed char v97 = 1;
signed int v96 = 1;
signed int v95 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed char v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = 0;
unsigned short v100 = 1;
signed short v99 = 3;
trace++;
switch (trace)
{
case 8: 
return;
default: abort ();
}
}
}
}

signed int v17 (void)
{
{
for (;;) {
signed short v104 = -3;
unsigned int v103 = 0U;
unsigned int v102 = 2U;
trace++;
switch (trace)
{
case 11: 
return -3;
default: abort ();
}
}
}
}
