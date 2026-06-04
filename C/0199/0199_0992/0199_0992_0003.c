#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned short v5 (unsigned char, signed int, signed short);
extern unsigned short (*v6) (unsigned char, signed int, signed short);
void v7 (void);
void (*v8) (void) = v7;
extern signed char v9 (signed short, unsigned short, signed char, signed int);
extern signed char (*v10) (signed short, unsigned short, signed char, signed int);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned int v13 (signed int, signed short, unsigned short);
extern unsigned int (*v14) (signed int, signed short, unsigned short);
extern unsigned int v15 (unsigned short, signed short);
extern unsigned int (*v16) (unsigned short, signed short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
unsigned char v19 (unsigned int, unsigned short);
unsigned char (*v20) (unsigned int, unsigned short) = v19;
signed short v21 (unsigned char);
signed short (*v22) (unsigned char) = v21;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v101 = 0U;
signed char v100 = 3;
signed char v99 = -1;

signed short v21 (unsigned char v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = -2;
unsigned int v104 = 7U;
signed short v103 = -4;
trace++;
switch (trace)
{
case 4: 
return v103;
default: abort ();
}
}
}
}

unsigned char v19 (unsigned int v106, unsigned short v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned char v110 = 2;
unsigned int v109 = 2U;
unsigned char v108 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
signed char v113 = 2;
signed short v112 = -2;
signed int v111 = 2;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}
