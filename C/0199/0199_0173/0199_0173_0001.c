#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (signed char, signed char, unsigned int);
extern unsigned int (*v4) (signed char, signed char, unsigned int);
extern signed char v5 (void);
extern signed char (*v6) (void);
signed int v7 (unsigned int, unsigned int, signed char, signed int);
signed int (*v8) (unsigned int, unsigned int, signed char, signed int) = v7;
extern signed char v9 (signed char, signed short);
extern signed char (*v10) (signed char, signed short);
extern void v11 (signed short);
extern void (*v12) (signed short);
extern void v17 (signed char);
extern void (*v18) (signed char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed short v21 (signed char, signed char);
extern signed short (*v22) (signed char, signed char);
extern signed short v23 (signed char, unsigned char, signed short);
extern signed short (*v24) (signed char, unsigned char, signed short);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern unsigned char v27 (signed char, unsigned short, unsigned char, unsigned int);
extern unsigned char (*v28) (signed char, unsigned short, unsigned char, unsigned int);
unsigned int v29 (unsigned char);
unsigned int (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v48 = -1;
unsigned short v47 = 4;
signed int v46 = 2;

unsigned int v29 (unsigned char v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 5;
signed int v51 = 3;
signed short v50 = 3;
trace++;
switch (trace)
{
case 11: 
return 3U;
default: abort ();
}
}
}
}

signed char v25 (void)
{
{
for (;;) {
signed char v55 = -1;
unsigned int v54 = 4U;
unsigned int v53 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned int v56, unsigned int v57, signed char v58, signed int v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 6;
signed short v61 = 1;
unsigned char v60 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
