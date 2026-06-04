#include <stdlib.h>
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned short v5 (signed char);
extern unsigned short (*v6) (signed char);
extern unsigned int v7 (unsigned short, signed short);
extern unsigned int (*v8) (unsigned short, signed short);
extern signed char v9 (unsigned int, signed char);
extern signed char (*v10) (unsigned int, signed char);
extern signed int v11 (unsigned char, unsigned char, unsigned int);
extern signed int (*v12) (unsigned char, unsigned char, unsigned int);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern signed int v19 (signed short);
extern signed int (*v20) (signed short);
signed int v21 (signed int, unsigned short);
signed int (*v22) (signed int, unsigned short) = v21;
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (unsigned short, unsigned short);
extern unsigned char (*v28) (unsigned short, unsigned short);
extern signed int v29 (unsigned char, signed short, unsigned char, unsigned int);
extern signed int (*v30) (unsigned char, signed short, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v52 = 2;
unsigned int v51 = 0U;
signed short v50 = 2;

unsigned char v23 (void)
{
{
for (;;) {
unsigned char v55 = 5;
unsigned short v54 = 1;
unsigned int v53 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed int v56, unsigned short v57)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned short v60 = 6;
unsigned char v59 = 5;
signed char v58 = -2;
trace++;
switch (trace)
{
case 2: 
return v56;
case 4: 
return 0;
case 6: 
return v56;
case 8: 
return -2;
case 10: 
return -2;
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
signed char v63 = -2;
unsigned short v62 = 4;
signed short v61 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
