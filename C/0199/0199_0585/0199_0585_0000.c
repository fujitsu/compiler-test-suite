#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned char);
extern signed int (*v2) (unsigned int, unsigned char);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed int v5 (signed char);
extern signed int (*v6) (signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
unsigned int v11 (signed short, signed short);
unsigned int (*v12) (signed short, signed short) = v11;
extern unsigned int v13 (unsigned short);
extern unsigned int (*v14) (unsigned short);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
unsigned char v19 (signed int, unsigned char, unsigned char);
unsigned char (*v20) (signed int, unsigned char, unsigned char) = v19;
extern signed short v21 (signed int, signed short, signed int);
extern signed short (*v22) (signed int, signed short, signed int);
extern signed short v23 (signed char);
extern signed short (*v24) (signed char);
extern unsigned int v25 (unsigned short, unsigned short, unsigned short, signed short);
extern unsigned int (*v26) (unsigned short, unsigned short, unsigned short, signed short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned int v29 (signed short, unsigned int, signed short);
extern unsigned int (*v30) (signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
signed int v32 = -1;
unsigned char v31 = 1;

unsigned char v19 (signed int v34, unsigned char v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 1;
signed short v38 = 0;
signed short v37 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed short v40, signed short v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 0U;
unsigned short v43 = 5;
signed short v42 = -1;
trace++;
switch (trace)
{
case 6: 
return 0U;
case 10: 
return 2U;
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
unsigned int v47;
unsigned char v48;
signed int v49;
v47 = 6U + 3U;
v48 = v31 + 6;
v49 = v1 (v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
