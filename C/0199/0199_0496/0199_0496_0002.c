#include <stdlib.h>
extern signed short v1 (unsigned int, unsigned short);
extern signed short (*v2) (unsigned int, unsigned short);
extern signed int v3 (signed short, signed char);
extern signed int (*v4) (signed short, signed char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern void v7 (unsigned char, unsigned char, signed int);
extern void (*v8) (unsigned char, unsigned char, signed int);
extern signed int v9 (signed int, signed char, signed char);
extern signed int (*v10) (signed int, signed char, signed char);
extern signed int v11 (unsigned short);
extern signed int (*v12) (unsigned short);
unsigned char v13 (unsigned short, unsigned char);
unsigned char (*v14) (unsigned short, unsigned char) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v17 (signed int);
extern unsigned short (*v18) (signed int);
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern signed int v21 (signed char, unsigned short, unsigned short, signed int);
extern signed int (*v22) (signed char, unsigned short, unsigned short, signed int);
extern signed short v25 (void);
extern signed short (*v26) (void);
signed short v27 (unsigned char, unsigned short, signed int);
signed short (*v28) (unsigned char, unsigned short, signed int) = v27;
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v64 = -2;
signed int v63 = -2;
signed char v62 = 0;

signed int v29 (void)
{
{
for (;;) {
unsigned short v67 = 6;
signed int v66 = -1;
signed short v65 = -4;
trace++;
switch (trace)
{
case 5: 
return v66;
case 7: 
return v66;
case 9: 
return -3;
default: abort ();
}
}
}
}

signed short v27 (unsigned char v68, unsigned short v69, signed int v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned char v73 = 1;
signed int v72 = -2;
unsigned int v71 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v74, unsigned char v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed int v78 = -1;
signed int v77 = -3;
signed int v76 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
