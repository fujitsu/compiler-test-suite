#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v9 (signed int, unsigned char, signed int, signed short);
extern unsigned char (*v10) (signed int, unsigned char, signed int, signed short);
extern void v11 (unsigned int, unsigned short, unsigned short);
extern void (*v12) (unsigned int, unsigned short, unsigned short);
extern unsigned char v13 (unsigned int, unsigned char, signed int);
extern unsigned char (*v14) (unsigned int, unsigned char, signed int);
extern signed char v15 (unsigned char, unsigned short, signed short, unsigned char);
extern signed char (*v16) (unsigned char, unsigned short, signed short, unsigned char);
void v17 (signed int, unsigned int, unsigned int, signed int);
void (*v18) (signed int, unsigned int, unsigned int, signed int) = v17;
extern void v19 (unsigned char, signed char, unsigned char, signed int);
extern void (*v20) (unsigned char, signed char, unsigned char, signed int);
extern signed short v21 (unsigned short, signed char, signed short);
extern signed short (*v22) (unsigned short, signed char, signed short);
signed char v23 (unsigned char, signed char);
signed char (*v24) (unsigned char, signed char) = v23;
extern unsigned int v25 (signed short, signed short, signed char);
extern unsigned int (*v26) (signed short, signed short, signed char);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v53 = 2;
unsigned int v52 = 3U;
signed short v51 = 3;

signed int v27 (void)
{
{
for (;;) {
unsigned int v56 = 6U;
signed char v55 = -4;
signed char v54 = -1;
trace++;
switch (trace)
{
case 7: 
return 2;
default: abort ();
}
}
}
}

signed char v23 (unsigned char v57, signed char v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed char v61 = 2;
signed int v60 = 2;
signed char v59 = -4;
trace++;
switch (trace)
{
case 10: 
return v58;
default: abort ();
}
}
}
}

void v17 (signed int v62, unsigned int v63, unsigned int v64, signed int v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned int v68 = 1U;
unsigned int v67 = 2U;
signed int v66 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
