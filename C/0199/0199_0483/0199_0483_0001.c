#include <stdlib.h>
extern void v1 (signed short, unsigned char, unsigned char, signed int);
extern void (*v2) (signed short, unsigned char, unsigned char, signed int);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern void v5 (signed short);
extern void (*v6) (signed short);
extern unsigned char v7 (unsigned int, unsigned short, signed int);
extern unsigned char (*v8) (unsigned int, unsigned short, signed int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed char v11 (signed short, signed int, signed char);
extern signed char (*v12) (signed short, signed int, signed char);
signed char v13 (unsigned short, signed char, unsigned short, unsigned int);
signed char (*v14) (unsigned short, signed char, unsigned short, unsigned int) = v13;
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (unsigned int, unsigned int, signed char, unsigned char);
extern void (*v22) (unsigned int, unsigned int, signed char, unsigned char);
extern signed short v23 (signed short, signed short, signed int);
extern signed short (*v24) (signed short, signed short, signed int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern void v29 (signed char, unsigned int, signed char);
extern void (*v30) (signed char, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v65 = 0;
unsigned char v64 = 2;
unsigned int v63 = 7U;

unsigned char v27 (void)
{
{
for (;;) {
unsigned char v68 = 7;
signed char v67 = -2;
signed int v66 = 0;
trace++;
switch (trace)
{
case 4: 
return 7;
case 6: 
return v68;
case 8: 
return v68;
case 10: 
return v68;
default: abort ();
}
}
}
}

signed char v13 (unsigned short v69, signed char v70, unsigned short v71, unsigned int v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed int v75 = -4;
unsigned short v74 = 7;
unsigned char v73 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
