#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
unsigned short v3 (signed char, unsigned char, unsigned char);
unsigned short (*v4) (signed char, unsigned char, unsigned char) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (unsigned char, signed char, unsigned int);
extern signed short (*v8) (unsigned char, signed char, unsigned int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
unsigned char v13 (unsigned int);
unsigned char (*v14) (unsigned int) = v13;
extern signed int v15 (signed short);
extern signed int (*v16) (signed short);
extern signed char v17 (unsigned int, unsigned short);
extern signed char (*v18) (unsigned int, unsigned short);
signed char v19 (void);
signed char (*v20) (void) = v19;
extern unsigned int v21 (signed short, signed int, unsigned short);
extern unsigned int (*v22) (signed short, signed int, unsigned short);
extern unsigned int v25 (signed short, signed short);
extern unsigned int (*v26) (signed short, signed short);
extern signed char v29 (unsigned int, unsigned int, unsigned int);
extern signed char (*v30) (unsigned int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v48 = 0;
unsigned short v47 = 4;
unsigned int v46 = 1U;

signed char v19 (void)
{
{
for (;;) {
signed short v51 = 3;
unsigned char v50 = 7;
unsigned char v49 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned int v52)
{
history[history_index++] = (int)v52;
{
for (;;) {
signed char v55 = -3;
unsigned char v54 = 1;
unsigned short v53 = 0;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}

unsigned short v3 (signed char v56, unsigned char v57, unsigned char v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed char v61 = -1;
signed int v60 = -3;
unsigned int v59 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
