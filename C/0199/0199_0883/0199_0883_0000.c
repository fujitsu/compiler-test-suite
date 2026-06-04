#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned char, unsigned short, unsigned char);
extern unsigned int (*v2) (signed char, unsigned char, unsigned short, unsigned char);
unsigned int v3 (unsigned short);
unsigned int (*v4) (unsigned short) = v3;
extern signed short v5 (signed int, unsigned char);
extern signed short (*v6) (signed int, unsigned char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned short v11 (signed int, unsigned short, unsigned int);
extern unsigned short (*v12) (signed int, unsigned short, unsigned int);
extern signed char v13 (signed char);
extern signed char (*v14) (signed char);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern signed short v17 (unsigned short, unsigned int, signed char);
extern signed short (*v18) (unsigned short, unsigned int, signed char);
signed char v19 (unsigned int, unsigned int, signed char);
signed char (*v20) (unsigned int, unsigned int, signed char) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned int v23 (signed short, unsigned char, unsigned int, unsigned char);
extern unsigned int (*v24) (signed short, unsigned char, unsigned int, unsigned char);
extern signed short v25 (unsigned int);
extern signed short (*v26) (unsigned int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
void v29 (unsigned int, unsigned char);
void (*v30) (unsigned int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
unsigned int v32 = 3U;
unsigned short v31 = 5;

void v29 (unsigned int v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 2U;
unsigned short v37 = 7;
signed char v36 = 3;
trace++;
switch (trace)
{
case 10: 
return;
default: abort ();
}
}
}
}

signed char v19 (unsigned int v39, unsigned int v40, signed char v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = 0;
signed char v43 = 3;
unsigned char v42 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned int v47 = 5U;
signed char v46 = 1;
signed int v45 = 2;
trace++;
switch (trace)
{
case 1: 
return 7;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
signed short v51 = 1;
unsigned short v50 = 5;
unsigned int v49 = 0U;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v52;
signed short v53;
v52 = v49 + 3U;
v53 = v25 (v52);
history[history_index++] = (int)v53;
}
break;
case 5: 
return 1U;
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
signed char v56;
unsigned char v57;
unsigned short v58;
unsigned char v59;
unsigned int v60;
v56 = -2 + 0;
v57 = 7 - 2;
v58 = 2 - v31;
v59 = 1 + 0;
v60 = v1 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
