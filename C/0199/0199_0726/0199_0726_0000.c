#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed char, signed int, signed short, unsigned short);
extern signed short (*v2) (signed char, signed int, signed short, unsigned short);
signed int v3 (unsigned int, unsigned short, unsigned int, signed char);
signed int (*v4) (unsigned int, unsigned short, unsigned int, signed char) = v3;
extern signed char v7 (signed short, unsigned char);
extern signed char (*v8) (signed short, unsigned char);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned char v17 (signed int);
extern unsigned char (*v18) (signed int);
signed char v19 (unsigned int, signed char);
signed char (*v20) (unsigned int, signed char) = v19;
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed char v23 (unsigned short, signed short, signed short);
extern signed char (*v24) (unsigned short, signed short, signed short);
unsigned int v25 (unsigned char);
unsigned int (*v26) (unsigned char) = v25;
extern signed char v27 (unsigned int, signed short);
extern signed char (*v28) (unsigned int, signed short);
extern signed short v29 (signed int, unsigned char);
extern signed short (*v30) (signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 5;
signed char v32 = 1;
signed char v31 = 0;

unsigned int v25 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = -2;
signed short v36 = 2;
unsigned char v35 = 0;
trace++;
switch (trace)
{
case 4: 
return 3U;
case 6: 
return 5U;
case 8: 
return 1U;
case 10: 
return 6U;
default: abort ();
}
}
}
}

signed char v19 (unsigned int v38, signed char v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 1;
signed short v41 = -3;
signed char v40 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned int v43, unsigned short v44, unsigned int v45, signed char v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = -1;
signed short v48 = -3;
signed int v47 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed char v52;
signed int v53;
signed short v54;
unsigned short v55;
signed short v56;
v52 = v32 - v32;
v53 = 3 - -2;
v54 = 2 + 3;
v55 = 2 - v33;
v56 = v1 (v52, v53, v54, v55);
history[history_index++] = (int)v56;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
